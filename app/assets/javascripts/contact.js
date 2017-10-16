$(function() {
  // Set up an event listener for the contact form.
	$('.mailto_link').click(function(e) {
		// Stop the browser from submitting the form.
		event.preventDefault();

		var data_to = $('.mailto_link').data('to');
		var name    = $("#name").val();
		var subject = $('#subject').val();
		var message = $('#message').val().trim();

		body = "Доброго дня,\n\n\t" + message + "\n\n\n\n" + "З повагою, \n" + name;

		window.location = data_to + '?subject=' + encodeURIComponent(subject) + '&body=' + encodeURIComponent(body);
	});

});