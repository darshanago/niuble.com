var client = null,
    mysql = require('mysql'),
    EMPLOYEES = '`employees`';

if(mysql.createClient) {
    client = mysql.createClient(db_options);  
} else {  
    client = new mysql.Client(db_options);  
    client.connect(function(err) {  
        if(err) {  
            console.error('connect db ' + client.host + ' error: ' + err);  
            process.exit();  
        }  
    });  
}  

var methods = {
    getemployee: function( id, callback ){
        var sql = 'SELECT * FROM '+EMPLOYEES;
        if( id ){
            sql += ' `id`=' + id;
        }
        client.query(sql, function(err, results, fields){
            if (err) {  
                throw err;  
            }
            callback( JSON.stringify(results) );
        });
    },
    postemployee: function( data, callback ){
        client.query('INSERT INTO '+EMPLOYEES+ ' SET `chinese`=?, `english`=?, `password`=?, `options`=?', [
            data['chinese'], 
            data['english'], 
            data['password'], 
            data['options']
        ]);
        callback( true );
    },
    putemployee: function( data, callback ){
        callback( client.query( "UPDATE "+EMPLOYEES+" SET `chinese` = ?, `english` = ?, `password` = ?, `options` = ? WHERE `id` = ?", [
            data['chinese'], 
            data['english'], 
            data['password'], 
            data['options'],
            data['id']
        ]) );
    }
};


exports.methods = function( method, model, data, callback ){
    methods[method+model]( data, callback );
}
