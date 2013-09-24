var express = require('express');
var app = express();

app.get('/', function(req, res){
	res.type('text/plain');	//content type
	res.send('I like web services'); //send response
});

app.listen(process.env.PORT || 4730);
