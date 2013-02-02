var my = {
    score: 0
};
var options = {
    width: 800,
    height: 600,
    coinAmount: 3,//每级金币级数
    coinRate: [10,30,60], //每级金币的出现几率，共100
    coinsPerTime: 4, //每次随机掉落的金币上限
    timesPerGate: 10,//掉几次金币掉一次门。
    interval: [3000, 2000], //掉落间隔
    gravity: [0, 0], //加速度区间
    vy: [200,100]//初速度区间
}
var socket = new Socket();
var randomTimeout;
var Q = Quintus()
    .include("Sprites, Scenes, Input, 2D, Touch, UI")
    .setup("game")
    .controls()
    .touch();

function Socket(){
    this.socket = io.connect('http://localhost:8889');
}

Socket.prototype.standard = function( event ){
    this.socket.emit(event, {
        id: this.id,
        name: this.name
    });
}
Socket.prototype.join = function( name ){
    var the = this;
    this.name = name;

    this.socket.emit('join', name);

    this.socket.on('join', function (id) {
        the.id = id;
    });

    this.socket.on('join', function (name, img) {
        $('#room').append('<div class="player">'+ name +'</div>');
    });
}
Socket.prototype.on = function( event, callback ){
    this.socket.on(event, callback);
}
Socket.prototype.score = function(){
    this.socket.emit('score', {
        id: this.id,
        name: this.name,
        score: my.score
    });
}

/*
Q.component("MyControls", {

    added: function() {
        var p = this.entity.p;

        if(!p.stepDistance) { p.stepDistance = 30; }
        if(!p.stepDelay) { p.stepDelay = 0.1; }

        p.stepWait = 0;
        this.entity.on("step",this,"step");
    },

    step: function(dt) {
        var p = this.entity.p,
        moved = false;
        p.stepWait -= dt;

        if(p.stepping) {
            var x = p.x + p.diffX * dt / p.stepDelay;
            if( x > p.w/2 && x < options.width - p.w/2 ){
                p.x = x;
            }else if( x <= p.w/2 ){
                p.x = p.w/2;
            }else{
                p.x = options.width - p.w/2;
            }
        }

        if(p.stepWait > 0) { return; }
        if(p.stepping) {
            if( p.destX > p.w/2 && p.destX < options.width - p.w/2 ){
                p.x = p.destX;
            }else if( p.destX <= p.w/2 ){
                p.x = p.w/2;
            }else{
                p.x = options.width - p.w/2;
            }
        }
        p.stepping = false;

        p.diffX = 0;

        if(Q.inputs['left']) {
            p.diffX = -p.stepDistance;
        } else if(Q.inputs['right']) {
            p.diffX = p.stepDistance;
        }

        if(p.diffX ) { 
            p.stepping = true;
            p.origX = p.x;
            p.destX = p.x + p.diffX;
            p.stepWait = p.stepDelay; 
        }

    }

});
*/

Q.Sprite.extend("Ground",{
    init: function(p) {
        this._super(p);
    }
});

Q.Sprite.extend("Player",{
    init: function(p) {
        this._super(p, { sheet: "player"});
        this.add('2d, platformeControls');
        this.on('step', function(){
            if( this.p.x <= this.p.w/2 ){
                if(this.p.vx < 0 ){
                    this.p.vx = 0;
                }
                this.p.x = this.p.w/2;
            }else if ( this.p.x >= options.width - this.p.w/2 ) {
                if(this.p.vx > 0 ){
                    this.p.vx = 0;
                }
                this.p.x = options.width - this.p.w/2;
            }
        });
        this.on("hit.sprite", function(collision) {
            if( collision.obj.isA("Ground")) {
                if(my.score != 0){
                    backTozero();
                }
            }
        });
    }
});

Q.Sprite.extend("Gate",{
    init: function(p) {
        this._super(p, { sheet: 'gate'});
        GateInit.call(this);
    }
});
Q.Sprite.extend("Coin1",{
    init: function(p) {
        this._super(p, { sheet: 'coin1'});
        CoinInit.call(this);
    },
    amount: function () {
        return Math.ceil(Math.random()*options.coinAmount);
    }
});
Q.Sprite.extend("Coin2",{
    init: function(p) {
        this._super(p, { sheet: 'coin2'});
        CoinInit.call(this);
    },
    amount: function () {
        return Math.ceil(Math.random()*options.coinAmount)+options.coinAmount;
    }
});
Q.Sprite.extend("Coin3",{
    init: function(p) {
        this._super(p, { sheet: 'coin3'});
        CoinInit.call(this);
    },
    amount: function () {
        return Math.ceil(Math.random()*options.coinAmount)+options.coinAmount*2;
    }
});

function goal(score){
    my.score += score;
    if( my.score > 21 ){
        backTozero( score );
    }else{
        $('#score .current').text(my.score);
        $('#goal').text('+'+score).fadeIn().delay(800).fadeOut();
        socket.score();
    }
}
function backTozero( score ){
    my.score = 0;
    $('#score .current').text(my.score);
    $('#goal').text('Zero!' + (score ? ' +'+ score : '')).stop(true).fadeIn().delay(800).fadeOut();
    socket.score();
}

function GateInit(){
    GoodsInit.call(this, function(){
        clearTimeout(randomTimeout);
        Q.clearStages();
        Q.stageScene("endGame");
    })
}
function CoinInit(){
    GoodsInit.call(this, function(){
        goal(this.amount());
        this.destroy();
    })
}
function GoodsInit(callback) {
    this.add('2d');
    this.first_landing = true;

    this.on("bump.bottom", function(collision) {
        if( collision.obj.isA("Ground")) {
            if(this.first_landing){
                this.first_landing = false;
                this.p.vy = -50;
                this.p.gravity = .2;
            }else{
                this.destroy();
            }
        } else if( ! collision.obj.isA("Player")) {
            this.p.vy = 50;
            collision.obj.p.vy = 60;
        } else {
            callback.call(this);
        }
    });
    this.on("bump.left",function(collision) {
        if( ! collision.obj.isA("Player")) {
            if(this.p.vx != 0){
                this.p.vx = 40;
                collision.obj.p.vx = 50;
            }
        }else{
            this.p.vx = 100;
        }
    });
    this.on("bump.right",function(collision) {
        if( ! collision.obj.isA("Player")) {
            if(this.p.vx != 0){
                this.p.vx = -40;
                collision.obj.p.vx = -50;
            }
        }else{
            this.p.vx = -100;
        }
    });
    this.on("step",function() {
        if(this.p.y > options.height + this.p.h ){
            this.destroy();
        }
    });
}

Q.scene("start",function(stage) {
    var player = stage.insert(new Q.Player({
        x: 400, 
        y: 385 
    }));

    stage.insert(new Q.Ground({ 
        x: 0,
        y: 600, 
        w: options.width*2, 
        h: 200 
    }));

    randomCoin();
});

Q.scene('waitGame',function(stage) {
    var box = stage.insert(new Q.UI.Container({
        x: Q.width/2, y: Q.height/2, fill: "rgba(0,0,0,0.5)"
    }));

    var button = box.insert(new Q.UI.Button({ 
        x: 0, y: 0, fill: "#CCCCCC", label: "Ready" 
    }));

    button.on("click",function() {
        Q.clearStages();
        Q.stageScene('readyGame');
        socket.standard('ready');
    });
    box.fit(20);
});

Q.scene('readyGame',function(stage) {
    var box = stage.insert(new Q.UI.Container({
        x: Q.width/2, y: Q.height/2, fill: "rgba(0,0,0,0.5)"
    }));

    var button = box.insert(new Q.UI.Button({ 
        x: 0, y: 0, fill: "#CCCCCC", label: "UnReady" 
    }));

    button.on("click",function() {
        Q.clearStages();
        Q.stageScene('waitGame');
        socket.standard('unready');
    });
    box.fit(20);
});

function randomCoin(){
    var coins = random(options.coinsPerTime);
    if( 1+random(options.timesPerGate) > options.timesPerGate  ){
        Q.stage(0).insert(new Q.Gate({ 
            x: random(options.width), 
            y: 0, 
            vy: random(options.vy[0], options.vy[1]),
            gravity: random(options.gravity[0], options.gravity[1])
        }));
    }
    while( coins-- ){
        var coin = eval('Q.Coin'+random(3));
        Q.stage(0).insert(new coin({ 
            x: random(options.width), 
            y: 0, 
            vy: random(options.vy[0], options.vy[1]),
            gravity: random(options.gravity[0], options.gravity[1])
        }));
    }
    randomTimeout = setTimeout( randomCoin, random(options.interval[0], options.interval[1]));
}

function random( max, min ){
    min = min || 0;
    return Math.ceil(Math.random() * (max - min)) + min;
}

function coinCollision( collision ){
}

Q.scene('endGame',function(stage) {
    var box = stage.insert(new Q.UI.Container({
        x: Q.width/2, y: Q.height/2, fill: "rgba(0,0,0,0.5)"
    }));

    var button = box.insert(new Q.UI.Button({ x: 0, y: 0, fill: "#CCCCCC",
        label: "Play Again" }));

    button.on("click",function() {
        Q.clearStages();
        Q.stageScene('start');
    });
    box.fit(20);
});

Q.load("sprites.png, sprites.json", function() {
    Q.compileSheets("sprites.png","sprites.json");
    Q.stageScene("start");
});


$('#join').on('click', function(){
    var name = $('#name').val();
    if( name ){
        $('#login').remove();
        socket.join(name);
    }
    return false;
});

socket.on('countdown', function(i){
    console.log(i);
});
socket.on('start', function(i){
    Q.stageScene("start");
});
