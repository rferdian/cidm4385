//for output statements to the console
var util = require('util');

//uses express - look at this tutorial
//http://blog.modulus.io/nodejs-and-express-create-rest-api
var express = require('express');
var app = express();

//there are several MySQL libraries for Node.js
//this is a javascript client - node-mysql: https://github.com/felixge/node-mysql
var mysql = require('mysql');

var host = 'buffteks.dyndns.org';

//the node-mysql documentation suggests pooling connections to share a single connection
//for many client requests
var pool = mysql.createPool({
    host:       'localhost',
    database:   'DerbyNames',
    user:       'webUser',
    password:   'webuser',
});

var derbyNamesServiceCount = 0;
var derbyLeaguesServiceCount = 0;

//this specifies our REST service responding to HTTP GET requests
app.get('/derbyNames', function(req, res){

    //draw a new connection from the pool and do the work
    //we'll enter the passed function when the connection 
    //is provided
    pool.getConnection(function(err, connection){
        //do stuff here when connected!
        console.log("Derby Names Web Service");

        //pass a query and the event handler for the response
        connection.query("SELECT * FROM DerbyNames", function(err, rows, fields){

            //if there is a problem, throw error and crash program
            if(err){
                throw err;
            }

            //this is debug information
            /*
            for(x in rows){
                console.log(rows[x]);
            }*/

            //we send the entire array of JSON objects
            res.send(rows);

            //we are done with this connection, send back to pool
            connection.release();

        }); //end connection
    }); //end pool

    derbyNamesServiceCount++;
    console.log("served %d times", derbyNamesServiceCount);

}); //end REST get


//this specifies our REST service responding to HTTP GET requests
app.get('/derbyLeagues', function(req, res){

    //draw a new connection from the pool and do the work
    //we'll enter the passed function when the connection 
    //is provided
    pool.getConnection(function(err, connection){
        //do stuff here when connected!
        console.log("Derby Leagues Web Service");

        //pass a query and the event handler for the response
        connection.query("SELECT * FROM Leagues", function(err, rows, fields){

            //if there is a problem, throw error and crash program
            if(err){
                throw err;
            }

            //this is debug information
            /*
            for(x in rows){
                console.log(rows[x]);
            }*/

            //we send the entire array of JSON objects
            res.send(rows);

            //we are done with this connection, send back to pool
            connection.release();

        }); //end connection
    }); //end pool

    derbyLeaguesServiceCount++;
    console.log("served %d times", derbyLeaguesServiceCount);

}); //end REST get

//listen on port 1337
app.listen(process.env.PORT || 1337);

console.log('Server running at http://%s', host);
