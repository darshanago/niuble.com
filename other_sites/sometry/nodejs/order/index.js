var application_root = __dirname,
    views_root = application_root + '/public/views'
    express = require('express'),
    cons = require('consolidate'),
    path = require('path'),
    mysql = require('mysql'),
    url = require('url'),
    fs = require('fs');
    client = null,
    db_options = {  
        host: 'localhost',  
        port: 3306,  
        user: 'root',  
        password: 'root',
        database: 'order'
    },
    app = express();

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

    app.configure(function () {
        app.use(express.bodyParser());
        app.use(express.methodOverride());
        app.use(app.router);
        app.use(express.static(path.join(application_root, "public")));
        app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
    });

    app.engine('html', cons.swig);
    app.set('view engine', 'html');
    app.set('views', views_root);

    app.get('/api', function (req, res) {
        res.send('Ecomm API is running');
    });

    app.get('/index', function (req, res) {
        res.send('Ecomm API is running');
    });

    var page = ['login', 'checkin', 'manage', 'order', 'user'];

    for( var i=0; i<page.length; i++ ){
        app.get('/'+page[i], function (req, res){
            var file = (url.parse(req.url)['pathname']).match(/[^/]+$/i);
            res.render(file);
        });
    }
    
    app.listen(4242);
    console.log('server begin');
