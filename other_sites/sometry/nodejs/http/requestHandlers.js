//var exec = require("child_process").exec;
var querystring = require("querystring");
var formidable = require("formidable");
var fs = require("fs");

function start( response ) {
    var body = '<html>'+
        '<head>'+
        '<meta http-equiv="Content-Type" content="text/html; '+
        'charset=UTF-8" />'+
        '</head>'+
        '<body>'+
        '<form action="/upload" method="post" enctype="multipart/form-data">'+
        '<textarea name="text" rows="20" cols="60"></textarea>'+
        '<input type="file" name="upload" />'+
        '<input type="submit" value="Submit text" />'+
        '</form>'+
        '</body>'+
        '</html>';

    response.writeHead(200, {"Content-Type":"text/html"});
    response.write( body );
    response.end();
    return true;
}

function upload( response, request ) {
    var form = new formidable.IncomingForm();
    form.parse( request, function( error, fields, files ){
        fs.renameSync(files.upload.path, "/tmp/test.png");
        response.writeHead(200, {"Content-Type": "text/html"});
        response.write("You've sent: <img src='/show'>");
        response.end();
    });
    return true;
}

function show( response ){
    fs.readFile("/tmp/test.png", "binary", function(error, file){
        if(error) {
            response.writeHead(500, {"Content-Type": "text/plain"});
            response.write(error + "\n");
            response.end();
        } else {
            response.writeHead(200, {"Content-Type": "image/png"});
            response.write(file, "binary");
            response.end();
        }
    });
}

exports.start = start;
exports.upload = upload;
exports.show = show;
