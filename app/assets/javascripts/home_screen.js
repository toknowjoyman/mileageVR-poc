// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// canvas = $('#myCanvas')
//
// ctx = canvas[0].getContext('2d')
//
// # ctx.lineWidth = 10
// #
// # ctx.putPoint = ->
// #   @.beginPath()
// #   @.rect(10, 215, 5, 15)
// #   @.fillStyle = "blue"
// #   @.fill()



// # ctx.putPoint(100, 100)
var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");

ctx.beginPath();
ctx.rect(0, 0, 5, 15);
ctx.fillStyle = "blue";
ctx.fill();
