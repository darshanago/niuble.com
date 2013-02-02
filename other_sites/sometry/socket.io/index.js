var express = require('express'),
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

io.sockets.on('connection', function (socket) {
    socket.on('join', function( name ){
        io.sockets.emit('join', name);
    });

    socket.on('ready', function( user ){
        io.sockets.emit('ready', user);
        var i = 5;
        var interval = setInterval(function(){
            if( i > 0 ){
                io.sockets.emit('countdown', i--);
            }else{
                clearInterval(interval);
                io.sockets.emit('start');
            }
        }, 1000);
    });

    socket.on('unready', function( user ){
        io.sockets.emit('unready', user);
    });

    socket.on('score', function( user ){
        io.sockets.emit('score', user);
    });

    socket.on('disconnect', function( name ){
        io.sockets.emit('leave', [name]);
    });
});

