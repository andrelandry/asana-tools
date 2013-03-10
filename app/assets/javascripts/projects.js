// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	
	var events = [
		{dates: [new Date(2013, 0, 19)],
		 title: "2011 Season Opener",
		 attrs: {} // optional
		},
		{dates: [new Date(2013, 0, 13)], title: "Spring Training Begins"},
		{dates: [new Date(2013, 3, 9), new Date(2013, 3, 11)], title: "Atlanta Braves @ Houston Astros"}
		];
		
	var timeline = new Chronoline(document.getElementById('timeline'), events,
	    {animated: true});
		    
});
