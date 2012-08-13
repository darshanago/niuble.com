var application_root = __dirname,
    views_root = application_root + '/public/views'
    express = require('express'),
    cons = require('consolidate'),
    swig = require('swig'),
    path = require('path'),
    url = require('url'),
    fs = require('fs');
    db_options = {  
        host: 'localhost',  
        port: 3306,  
        user: 'root',  
        password: 'root',
        database: 'order'
    },
    app = express();

    app.configure(function () {
        app.use(express.bodyParser());
        app.use(express.methodOverride());
        app.use(app.router);
        app.use(express.static(path.join(application_root, "public")));
        app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
    });

    app.engine('html', cons.swig);
    app.set('view engine', 'html');
    app.set('view options', { layout: false });
    app.set('views', views_root);
    swig.init({ root: views_root, allowErrors: true });

    app.get(/^\/api\/(\w+)(?:\/(\d+))?$/i, function (req, res) {
        var api = require('./api'),
            model = req.params[0],
            id = req.params[1];

        api.methods( 'get', model, id, function( data ){
            res.type( 'application/json' );
            res.send( data );
        });
    });

    app.put('/api/:model/:id', function (req, res) {
        var api = require('./api');

        api.methods( 'put', req.params.model, req.body, function( data ){
            res.send( JSON.stringify(data) );
        });
    });

    app.post('/api/:model', function (req, res) {
        var api = require('./api');

        api.methods( 'post', req.params.model, req.body, function( data ){
            res.send( data );
        });
    });

    var page = ['login', 'checkin', 'manage', 'order', 'employee'];

    for( var i=0; i<page.length; i++ ){
        app.get('/'+page[i], function (req, res){
            var file = (url.parse(req.url)['pathname']).match(/[^/]+$/i);
            res.render(file);
        });
    }
    
    app.listen(4242);
    console.log('server begin');
