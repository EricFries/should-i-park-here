$(function(){

	hideSearchAgain();
	hideSMSForm();

	$("#search-again").click(function(){
		showForm();
		hideSearchAgain();
		$("#new_violation").trigger("reset");
		$(".search-result").empty();
	});

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
				showSMSForm();
			}
		});
	});
});

function displayViolation(response){
	$(".search-result").append(response);
}

function hideForm(){
	$("#new_violation").slideUp("fast");
}

function hideSMSForm(){
	$(".sms-form").hide();
}

function showForm(){
	$("#new_violation").show();
}

function showSMSForm(){
	$(".sms-form").show();
}

function hideSearchAgain(){
	$("#search-again").hide();
}

function showSearchAgain(){
	$("#search-again").show();
}
