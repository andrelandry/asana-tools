// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	
	get_tasks = $.ajax({
		url: '/projects/2/tasks',
		converters: {"text json": true},
		success: init_timline,
		error: function(jqXHR,textStatus,errorThrown){
			console.log(jqXHR);
		}
	});
	
	function init_timline(data){
		data = eval(data);
		
		console.log(data);		
		var timeline = new Chronoline(document.getElementById('timeline'), data,
	    		{animated: true});
	}
		    
});
