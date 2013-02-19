var players;
var game;
var completeds;
var my = {
    score: 0
};
var options = {
    width: 800,
    height: 600,
    //coinAmount: 3,//每级金币级数
    coinRate: [10,30,60], //每级金币的出现几率，共100
    coinsPerTime: 4, //每次随机掉落的金币上限
    timesPerGate: 5,//掉几次金币掉一次门。
    interval: [3000, 2000], //掉落间隔
    gravity: [0, 0], //加速度区间
    vy: [200,100],//初速度区间
    coin1: [1,2,3],
    coin2: [4,5,6,7],
    coin3: [7,8,9,10,11,12]
}

/*
$('#coinRate').val('[10,30,60]');
$('#coinsPerTime').val('4');
$('#timesPerGate').val('5');
$('#interval').val('[3000, 2000]');
$('#gravity').val('[0, 0]');
$('#vy').val('[200,100]');
$('#coin1').val('[1,2,3]');
$('#coin2').val('[4,5,6,7]');
$('#coin3').val('[7,8,9,10,11,12]');
$('#countdown').val('15');

$('#coinRate, #coinsPerTime, #timesPerGate, #interval, #gravity, #vy, #coin1, #coin2, #coin3, #countdown').change(function(){
    eval('options.'+this.id+'='+this.value);
});
*/

var socket = new Socket();
var randomTimeout;
var Q = Quintus()
    .include("Sprites, Scenes, Input, 2D, Touch, UI")
    .setup("game")
    .controls()
    .touch();

function refresh_players( players ){
    window.players = players;
    $('#room').empty();
    for( id in players){
        html = '<div id="player_'+id+'" class="player">';
        html += players[id].name;
        if( players[id].status == 1 ){
            html += ' <span style="color:green">准备</span>';
        }else if( players[id].status == 2 ){
            html += ' <span style="color:green">游戏中</span>';
        }else if( players[id].status == 3 ){
            html += ' <span style="color:red">已经完成</span>';
        }else if( players[id].status == 4 ){
            html += ' <span style="color:#aaa">逃跑</span>';
        }else if( players[id].status == 5 ){
            html += ' <span style="color:#aaa">超时</span>';
        }else if( players[id].status == 6 ){
            html += ' <span style="color:#aaa">离开</span>';
        }
        html += '</div>';
        $('#room').append(html);
    }
}

function Socket(){
    this.socket = socket = io.connect('/');
}

Socket.prototype.joined = function( player, game ){
    this.socket_prefix = game.id+'_';
    var _this = this;
    //监听本房间的，加入、离开、准备、取消准备
    //this.socket.socket.options.reconnect = false;
    this.socket.on(this.socket_prefix+'join', refresh_players);
    this.socket.on(this.socket_prefix+'leave', refresh_players);
    this.socket.on(this.socket_prefix+'ready', refresh_players);
    this.socket.on(this.socket_prefix+'unready', refresh_players);
    this.socket.on(this.socket_prefix+'socketchat', function(name, msg){
        $('#chatroom').append('<p>'+name+'：'+msg+'</p>');
    });
    refresh_players(game.players);
    this.socket.once(this.socket_prefix+'start', function( players ){
        refresh_players(players);
        $('#toggle_ready').fadeOut();
        $('canvas').focus();
        Q.clearStages();
        playBG('/music/background.ogg');
        Q.stageScene("start");

        var fc=true;
        _this.socket.on(_this.socket_prefix+'countdown', function(i){ 
            if(fc){
                options.timesPerGate = 2;
                playBG('/music/background2.ogg');
                fc=false;
            }
            $('#countdown_timer').text(i).show();
        });
        _this.socket.on(_this.socket_prefix+'gameover', function(players){
            $('#countdown_timer').hide();
            refresh_players(players);
            if( ! $('#leaderboard').is(":visible") ){
                $('#score').fadeOut();
                clearTimeout(randomTimeout);
                Q.clearStages();
                $('#leaderboard').show();
            }
        });
        _this.socket.on(_this.socket_prefix+'completed', refresh_players );
        _this.socket.on(_this.socket_prefix+'allcompleted', function(players){
            var ps = [];
            for( i in players ){
                ps.push(players[i]);
            }
            ps.sort(function(a, b){
                return a.score-a.time/1000000000 < b.score-b.time/1000000000;
            });
            $('#gameover').show();
            $('#gameover a').click(function(){ location.reload() }).show();
            refreshLeaderboard(ps);
        });
    });
}
Socket.prototype.join = function( name ){
    var the = this;
    this.socket.emit(
        'join', 
        name, 
        this.socket.socket.sessionid, 
        function(player, game){
            the.joined( player, game );
        });
}

Socket.prototype.standard = function( event ){
    this.socket.emit(event, this.id);
}
Socket.prototype.on = function( event, callback ){
    this.socket.on(this.socket_prefix+event, callback);
}
Socket.prototype.emit = function( event, callback ){
    this.socket.emit(event, callback);
}
Socket.prototype.score = function(){
    this.socket.emit('score', my.score);
}
Socket.prototype.chat = function(msg){
    this.socket.emit('socketchat', this.name, $("<div/>").html(msg).text());
}

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
                    backTozero(0, this);
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
        return options.coin1[random(options.coin1.length)-1];
    }
});
Q.Sprite.extend("Coin2",{
    init: function(p) {
        this._super(p, { sheet: 'coin2'});
        CoinInit.call(this);
    },
    amount: function () {
        return options.coin2[random(options.coin2.length)-1];
    }
});
Q.Sprite.extend("Coin3",{
    init: function(p) {
        this._super(p, { sheet: 'coin3'});
        CoinInit.call(this);
    },
    amount: function () {
        return options.coin3[random(options.coin3.length)-1];
    }
});

function goal(score, player){
    my.score += score;
    if( my.score > 21 ){
        backTozero( score, player );
    }else{
        $('#score .current').text(my.score);
        $('#goal')
            .text('+'+score)
            .show()
            .delay(100)
            .fadeOut()
            .css({
                left: player.p.x -100,
                top: player.p.y - player.p.h - 40
            });
        socket.score();
    }
}
function backTozero( score, player ){
    my.score = 0;
    $('#score .current').text(my.score);
    playAU('/music/boom.mp3');

    $('#goal')
        .text(score ? 'Zero! +'+ score : '落地清空')
        .show()
        .delay(100)
        .fadeOut()
        .css({
            left: player.p.x - 100,
            top: player.p.y - player.p.h - 40
        });

    socket.score();
}

function endGame(){
    $('#score').fadeOut();
    clearTimeout(randomTimeout);
    randomTimeout = undefined;
    Q.clearStages();
    $('#leaderboard').show();
    socket.on('score', refreshLeaderboard);
    socket.emit('request_leaderboard', refreshLeaderboard);
}
function refreshLeaderboard( players ){
    $('#leaderboard .body li:gt(0)').remove();
    var rank = 1;
    for ( var i in players ) {
        var li = $('<li id="rank_player_'+players[i].id+'">');
        if( players[i].first ){
            li.addClass('first');
        }
        if( players[i].status == 4 || players[i].status == 5 ){
            li.addClass('bad');
            li.addClass('time');
        }
        li.append($('<span class="rank">').text(rank++));
        li.append($('<span class="player">').text(players[i].name));
        li.append($('<span class="score">').text(players[i].score));
        if( players[i].status == 4 ) {
            li.append($('<span class="time">').text('逃跑'));
        } else if( players[i].status == 5 ) {
            li.append($('<span class="time">').text('超时'));
        } else {
            li.append($('<span class="time">').text(players[i].time));
        }
        $('#leaderboard .body').append(li);
    }

    if( game == 'end' ){
        if( ! $('#leaderboard .time').length ){
            //无超时，查找最长时间
            var id = [];
            var time = -1;
            for( var i in players ){
                if( players[i].time > time ){
                    id = [i];
                    time = players[i].time;
                }else if( players[i].time == time ){
                    id.push(i);
                }
            }
            //时间一样，比分数
            var score_id = [];
            var score = 22;
            for( var i in id ){
                if( players[id[i]].score < score ){
                    score_id = [id[i]];
                    score = players[id[i]].score;
                }else if( players[id[i]].score == score ){
                    score_id.push(id[i]);
                }
            }
            for( var i in score_id ){
                $('#rank_player_'+players[score_id[i]].id).addClass('bad');
            }
        } else {
            var score_id = [];
            var score = 22;
            for( var i in players ){
                if( players[i].score > score ){
                    score_id = [i];
                    time = players[i].score;
                }else if( players[i].score == score ){
                    score_id.push(i);
                }
            }
            for( var i in score_id ){
                $('#rank_player_'+score_id[i]).addClass('bad');
            }
        }
    }
}

function GateInit(){
    GoodsInit.call(this, function(){
        endGame();
        socket.standard('completed');
    })
}
function CoinInit(){
    GoodsInit.call(this, function( player ){
        goal(this.amount(), player);
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
            callback.call(this, collision.obj);
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
    $(document).on('click', '#toggle_ready', function(){
        if( this.innerText == 'Ready' ){
            socket.standard('ready');
            this.innerText = 'UnReady';
        }else{
            socket.standard('unready');
            this.innerText = 'Ready';
        }
    });
    $('#toggle_ready').show();
});

Q.scene('endGame',function(stage) {
    var box = stage.insert(new Q.UI.Container({
        x: Q.width/2, y: Q.height/2, fill: "rgba(0,0,0,0.5)"
    }));

    var button = box.insert(new Q.UI.Button({ x: 0, y: 0, fill: "#CCCCCC",
        label: "Play Again" }));

    button.on("click",function() {
        Q.clearStages();
        Q.stageScene('waitGame');
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

Q.load("sprites.png, sprites.json", function() {
    Q.compileSheets("sprites.png","sprites.json");
    Q.clearStages();
    Q.stageScene("waitGame");
    $('#chatinput').focus();
});

try{
    var name = document.cookie.match(/name482=([^;]+)/)[1];
}catch(e){
    var name = '';
}
$('#name').on('keydown', function(event){
    if( event.keyCode == 13 ){
        $('#join').trigger('click');
    }
}).val(unescape(name));
$('#join').on('click', function(){
    var name = $('#name').val();
    if( name ){
        socket.join(name);
        $('#login').hide();
        $('#layout').fadeIn()
        document.cookie = "name482="+escape(name);
    }else{
        alert("请填写用户名");
    }
    return false;
});
$(document).on('keydown', '#chatinput', function(event){
    if(event.keyCode == 13){
        socket.chat(this.value);
        this.value = "";
    }
});


var bg = document.createElement("audio");
var au = document.createElement("audio");
function playBG(afile) {
    if (bg != null && bg.canPlayType && bg.canPlayType("audio/mpeg")) {
        bg.src = afile;
        bg.play();
    }
}

function playAU(afile) {
    if (au != null && au.canPlayType && au.canPlayType("audio/mpeg")) {
        au.src = afile;
        au.play();
    }
}
