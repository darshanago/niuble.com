var games = {};
var openning_id = null;
var auto_id = 1;
var OPENNING = 0;
var START = 1;
var END = 2;
var CD = 3;

function Game( player ){
    this.id = 'g'+getAutoId();
    this.startTime = null;
    this.status = OPENNING;
    this.players = {};
    this.players[player.id] = player;
    this.length = 1;
    openning_id = this.id;
}
Game.prototype.refresh = function(){
    games[this.id] = this;
}
Game.prototype.isEnd = function(){
    return this.status == END;
}
Game.prototype.end = function(){
    this.status = END;
    this.refresh();
}
Game.prototype.isCountingdown = function(){
    return this.status == CD;
}
Game.prototype.countingdown = function(){
    this.status = CD;
    this.refresh();
}
Game.prototype.isPlaying = function(){
    return this.status == START;
}
Game.prototype.start = function(){
    this.status = START;
    this.startTime = (new Date()).getTime();
    this.refresh();
    openning_id = null;
}

function getAutoId(){
    return auto_id++;
}

function newGame( player ){
    var game = new Game( player );
    games[game.id] = game;
    return game;
}

function removeGame( id ){
    if( id == openning_id ) openning_id = null;
    return delete games[id];
}

function removePlayer( game_id, player_id ){
    for(var i in games[game_id].players){
        player = games[game_id].players[i];
        if( player.id == player_id ){
            delete games[game_id].players[i];
            games[openning_id].length--;
            if( games[openning_id].length == 0 ){
                removeGame(game_id);
            }
        }
    }
}

exports.join = function ( player ) {
    if( typeof player == 'undefined' ){
        return false;
    } else {
        if( openning_id && games[openning_id] ){
            games[openning_id].players[player.id] = player;
            games[openning_id].length++;
            return games[openning_id];
        }else{
            return newGame( player );
        }
    }
}

exports.get = function ( id ) {
    return games[id];
}

exports.close = function( id ){
    if( typeof id == 'undefined' ){
        return false;
    }
    return removeGame( id );
}

exports.list = function () {
    return games;
}
exports.gameObj = Game;
exports.removePlayer = removePlayer;
