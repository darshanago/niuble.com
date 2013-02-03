var express = require('express'),
    //redis = require("redis").createClient(6379, '127.0.0.1'),
    app = express(),
    path = require('path'),
    server = require('http').createServer(app),
    io = require('socket.io').listen(server);

app.configure(function () {
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(app.router);
    app.use(express.static(path.join(__dirname, "public")));
    app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
});

server.listen(80);

app.get('/', function (req, res) {
    res.sendfile(__dirname + '/public/index.html');
});

var players, game, player_socket, player_score;

io.sockets.on('connection', function (socket) {

    socket.on('request_game_info', function( callback ){
        callback(players, game); //返回玩家信息
    });
    socket.on('request_leaderboard', function( callback ){
        callback(getLeaderboard());
    });
    socket.on('join', playerJoin);
    socket.on('disconnect', playerLeave);
    socket.on('ready', playerReady);
    socket.on('unready', playerUnReady);

    socket.on('score', function( player ){
        try{
            players[player.id].score = player.score;
            io.sockets.emit('score', getLeaderboard());
        }catch(e){
            error();
        }
    });
    socket.on('completed', playerCompleted);
});

function getLeaderboard(){
    var ps = players.slice(0);
    ps.sort(function(a, b){
        return a.score+a.time/1000000000 < b.score+a.time/1000000000;
    });
    return ps;
}
function playerJoin( name, sessionid, setid ){
    try{
        var id = players.length;
        player = { id: id, name: name, score: 0, ready: 0, time:0 };
        player_socket.push(sessionid);
        players.push(player);
        io.sockets.emit('join', players);
        setid(id);
    }catch(e){
        error();
    }
}
function playerLeave( name ){
    try{
            for ( id in player_socket ) {
                if ( player_socket[id] in io.sockets.manager.closed ) {
                    if( ! game ){
                        players.splice(id, 1);
                        player_socket.splice(id, 1);
                        io.sockets.emit('leave', players);
                    }else{
                        players[id].ready = 4;//逃跑
                        io.sockets.emit('leave', players);
                        if(isEnd()){
                            io.sockets.emit('allcompleted', 'all');
                            reset();
                        }
                    }
                }
            }
    }catch(e){
        error();
    }
}
function playerReady( id ){
    try{
        players[id].ready = 1;
        for( var i in players ) {
            if( ! players[i].ready ){
                io.sockets.emit('ready', players);
                return true;
            }
        }
        for( var i in players ) {
            players[i].ready = 2;
        }
        game = (new Date()).getTime();
        io.sockets.emit('start', players);
    }catch(e){
        error();
    }
}
function playerUnReady( id ){
    try{
        players[id].ready = 0;
        io.sockets.emit('unready', players);
    }catch(e){
        error();
    }
}
function playerCompleted( id ){
    try{
        players[id].ready = 3;
        players[id].time = Math.ceil(((new Date()).getTime() - game) / 1000);
        for( var i in players ){
            if( players[i].ready < 3 ){
                return io.sockets.emit('completed', players);
            }
        }

        io.sockets.emit('completed', players);
        if(isEnd()){
            io.sockets.emit('score', getLeaderboard());
            io.sockets.emit('allcompleted', 'all');
            reset();
        }

    }catch(e){
        error();
    }
}

function isEnd(){
    for( var i in players ){
        if( players[i].ready < 3 ){
            return false;
        }
        return true;
    }
}

function reset(){
    game = false;
    players = [];
    player_socket = [];
    player_score = [];
}
function error(){
    console.log('error');
}

reset();
