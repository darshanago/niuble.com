exports.players = {};
//exports.player_sockets = {};
var auto_id = 1;
var WAITING = 0,
    READY = 1,
    PLAYING = 2,
    COMPLETED = 3,
    LEAVE = 4,
    TIMEOUT = 5;


function Player( name, sessionid ){
    this.id = 'p'+getAutoId();
    this.name = name;
    this.score = 0;
    this.time = 0;
    this.game_id = 0;
    this.status = WAITING;
    this.sessionid = sessionid;
}
Player.prototype.refresh = function(){
    exports.players[this.id] = this;
}

function getAutoId(){
    return auto_id++;
}

function newPlayer( name, sessionid ){
    var player = new Player( name, sessionid );
    this.players[player.id] = player;
    //this.player_sockets[player.id] = sessionid;
    return player;
}

function removePlayer( id ){
    return delete this.players[id];
}

exports.add = newPlayer;
exports.list = function () { return this.players; }
exports.playerObj = Player;
exports.removePlayer = removePlayer;
exports.get = function( id ){
    return this.players[id];
}
