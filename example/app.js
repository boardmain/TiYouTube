// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
win.add(label);
win.open();


var tiyoutube = require('it.scsoft.tiyoutube');


tiyoutube.openVideo({
    url:'http://youtu.be/P5_GlAOCHyE'
});