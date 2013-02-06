var express = require('express'),
    app = express(),
    path = require('path'),
    server = require('http').createServer(app),
    gameService = require('./game');
    playerService = require('./player');
    io = require('socket.io').listen(server);

app.configure(function () {
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(app.router);
    app.use(express.static(path.join(__dirname, "public")));
    app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
});

server.listen(8889);

app.get('/', function (req, res) {
    res.sendfile(__dirname + '/public/index.html');
});

gameService.gameObj.prototype.emit = function(ev){
    var params = arguments;
    params[0] = this.id + '_' + params[0];
    io.sockets.emit.apply(io.sockets, params);
}

//var games = [], player_score;

io.sockets.on('connection', function (socket) {
    var player = null;
    var game = null;
    var countdown;
    var countdownNum;

    function refreshPlayer(){
        player = game.players[player.id];
    }
    function refreshGame(){
        game = playerService.get(game.id);
    }

    socket.on('join', function(name,sessionid,callback){
        player = playerService.add( name, sessionid );
        game = gameService.join( player );
        player.game_id = game.id;

        //playerService.player_sockets.push(sessionid);
        //players.push(player);
        game.emit('join', game.players);
        callback(player, game);

        socket.on('disconnect', function(){
            if( game.status == 0 ){
                playerService.removePlayer(player.id);
                gameService.removePlayer(game.id, player.id);
                game.emit('leave', game.players);
            }else{
                game.players[player.id].status = game.players[player.id].status>2 ? 6 : 4;
                game.refresh();
                game.emit('leave', game.players);
                if( ! game.isEnd() && isEnd()){
                    game.end();
                    game.emit('allcompleted', game.players);
                    reset();
                }
            }
        });

        //TODO 整理
        socket.on('request_game_info', function( callback ){
            callback(game.players, game); //返回玩家信息
        });
        socket.on('request_leaderboard', function( callback ){
            callback(getLeaderboard());
        });

        socket.on('socketchat', function(name, msg){
            game.emit('socketchat', player.name, msg);
        });
        socket.on('ready', function(){
            var id = player.id;
            game.players[id].status = 1;
            for( var i in game.players ) {
                if( ! game.players[i].status ){
                    game.emit('ready', game.players);
                    return true;
                }
            }
            for( var i in game.players ) {
                game.players[i].status = 2;
            }
            game.start();
            game.emit('start', game.players);
        });
        socket.on('unready', function(){
            try{
                game.players[player.id].status = 0;
                game.refresh();
                game.emit('unready', game.players);
            }catch(e){
                error();
            }
        });

        socket.on('score', function(score){
            try{
                game.players[player.id].score = score;
                game.refresh();
                game.emit('score', getLeaderboard());
            }catch(e){
                error();
            }
        });

        socket.on('completed', function(){
            var id = player.id;
            try{
                if( game.isPlaying() && game.length > 1 ){
                    countdown = setInterval(function(){
                        if( countdownNum > 0 ){
                            game.emit('countdown', countdownNum--);
                        }else{
                            for( var i in game.players ){
                                if(game.players[i].status < 3){
                                    game.players[i].status = 5
                                }
                            }
                            game.end();
                            game.emit('gameover', game.players);
                            game.emit('allcompleted', game.players);
                            reset();
                        }
                    }, 1000);
                    game.players[id].first = true;
                    game.countingdown();
                }
                game.players[id].status = 3;
                game.players[id].time = Math.ceil(((new Date()).getTime() - game.startTime) / 1000);
                game.refresh();
                for( var i in game.players ){
                    if( game.players[i].status < 3 ){
                        return game.emit('completed', game.players);
                    }
                }

                game.emit('completed', game.players);
                if( ! game.isEnd() && isEnd()){
                    game.end();
                    game.emit('score', getLeaderboard());
                    game.emit('allcompleted', game.players);
                    reset();
                }

            }catch(e){
                error();
            }
        });

        function isEnd(){
            for( var i in game.players ){
                if( game.players[i].status < 3 ){
                    return false;
                }
                return true;
            }
        }

        function getLeaderboard(){
            var ps = [];
            for( i in game.players ){
                ps.push(game.players[i]);
            }
            ps.sort(function(a, b){
                return a.score-a.time/1000000000 < b.score-b.time/1000000000;
            });
            return ps;
        }
    });

    function reset(){
        clearInterval(countdown);
        countdownNum = 15;
        countdown = false;
    }
    reset();

});

//加入游戏
function playerJoin( name, sessionid, setid ){
}
function playerLeave( name ){
}
function playerReady( id ){
}
function playerUnReady( id ){
}

function playerCompleted( id ){
}


function error( err ){
    console.log(err);
}

