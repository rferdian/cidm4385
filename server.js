//uses express - look at this tutorial
//http://blog.modulus.io/nodejs-and-express-create-rest-api
var express = require('express');
var app = express();

//there are several MySQL libraries for Node.js
//this is a javascript client - node-mysql: https://github.com/felixge/node-mysql
var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 		'localhost',
    database:	'test',
	user: 		'test',
	password: 	'test',

});

//this specifies out REST service responding to HTTP GET requests
app.get('/',function(req, res){

    //database connection
    connection.connect();

    //pass a query and the event handler for the response
    connection.query("SELECT * FROM tester", function(err, rows, fields){

        //if there is a problem, throw error and crash program
        if(err){
            throw err;
        }

        //this is debug information
        for(x in rows){
                console.log(rows[x]);
        }

        //we send the entire array of JSON objects
        res.send(rows);

    });

    //close database
    connection.end();
});

//listen on port 1337
app.listen(process.env.PORT || 1337);
