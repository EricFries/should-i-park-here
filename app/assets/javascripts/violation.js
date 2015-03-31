$(function(){

	hideSearchAgain();

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

function showForm(){
	$("#new_violation").show();
}

function hideSearchAgain(){
	$("#search-again").hide();
}

function showSearchAgain(){
	$("#search-again").show();
}

// Add button to display search form again.
// Mabye just hide it initially and show it once a search is completed.
// function displaySearchAgain(){

// }