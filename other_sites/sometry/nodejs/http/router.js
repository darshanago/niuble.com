exports.route = function(handle, pathname, response, request){
    if( typeof handle[pathname] == 'function' ){
        return handle[pathname](response, request);
    }else{
        response.writeHead(404, {"Content-Type": "text/plain"});
        response.write("404 Not Found");
        response.end();
        return true;
    }
}
