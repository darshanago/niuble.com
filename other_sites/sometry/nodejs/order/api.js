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
    employee : {
        get: function( id, callback ){
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
        post: function( data, callback ){
            client.query('INSERT INTO '+EMPLOYEES+ ' SET `chinese`=?, `english`=?, `mobile`=?, `department`=?, `options`=?', [
                data['chinese'], 
                data['english'], 
                data['mobile'], 
                data['department'], 
                data['options']
            ]);
            callback( true );
        },
        put: function( data, callback ){
            callback( client.query( "UPDATE "+EMPLOYEES+" SET `chinese` = ?, `english` = ?, `mobile` = ?, `department`=?, `options` = ? WHERE `id` = ?", [
                data['chinese'], 
                data['english'], 
                data['mobile'], 
                data['department'], 
                data['options'],
                data['id']
            ]) );
        },
        delete: function(id, callback){
            callback( client.query("DELETE FROM "+EMPLOYEES+" WHERE `id` = ?", [ id ]) );
        }
    }
};


exports.methods = function( method, model, data, callback ){
    if( methods[model] && methods[model][method] ){
        methods[model][method]( data, callback );
    }else{
        callback({status:false, msg: 'Bad Call'});
    }
}
