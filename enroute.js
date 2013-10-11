/*
 * This requires: restler
 * To install, type 'npm install restler'
 * Tested with node.js v0.10.18
 */

var util = require('util');
var restclient = require('restler');

var fxml_url = 'http://flightxml.flightaware.com/json/FlightXML2/';
var username = 'user'; //replace
var apiKey = 'key';    //replace

var options = 
{
	username: username,
    password: apiKey,
    query: {airport: 'KAMA', howMany: 10, filter: 'airline', offset: 0}
}

restclient.get(fxml_url + 'Enroute', options)
.on('success', function(result, response) {
	//util.puts(util.inspect(result));
	var flights = result.EnrouteResult.enroute;
	for(i in flights){
		var flight = flights[i];
		util.puts("IDENT: " + flight.ident + 
			      " ORIGIN: " + flight.origin + 
			      " TYPE: " + flight.aircrafttype);
	}
})
.on('fail',function(data, response){
  util.puts(util.inspect(data));
})
.on('error', function(err, response){
	util.puts(err);
});
