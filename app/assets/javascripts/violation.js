$(function(){

	hideSearchAgain();


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
				showSearchAgain();
				listenerSearchAgain();
			}
		});
	});
});


function listenerSearchAgain(){$("#search-again").click(function(){
		showForm();
		hideSearchAgain();
		$("#new_violation").trigger("reset");
		$(".search-result").empty();
	});
}

function displayViolation(response){
	$(".search-result").prepend(response);
}

function hideForm(){
	$("#new_violation").slideUp("fast");
	$("#search-instruction").slideUp("fast");
}

function showForm(){
	$("#new_violation").show();
	$("#search-instruction").show();
}

function hideSearchAgain(){
	$("#search-again").hide();
}

function showSearchAgain(){
	$("#search-again").show();
}
