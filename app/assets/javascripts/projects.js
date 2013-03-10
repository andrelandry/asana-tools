// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	
	var project_id = $('#timeline').data('project');
	var task_url = "/projects/"+ project_id + "/tasks";
	
	$.ajax({
		url: task_url,
		converters: {"text json": true},
		success: init_timline,
		error: function(jqXHR,textStatus,errorThrown){
			console.log(jqXHR);
		}
	});
	
	function init_timline(data){
		data = eval(data);
			
		var timeline = new Chronoline(document.getElementById('timeline'), data,
	    		{animated: true});
	}
		    
});
