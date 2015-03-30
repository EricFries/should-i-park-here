$(function(){
	$("#new_violation").on("submit", function(e){
		e.preventDefault();
		var url = $(this).attr("action");
		var method = $(this).attr("method");
		var data = $(this).serialize();
		$.ajax(url, {
			method: method,
			data: data,
			success: function(response){
				hideForm();
				displayViolation(response);
				
			}
		});
	});
});

function displayViolation(response){
	$("body").append(response);
}

function hideForm(){
	$("#new_violation").slideUp("fast");
}