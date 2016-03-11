$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $(window).bind("pageshow", function(event) {
    if(event.originalEvent.persisted) {
      window.location.reload()
    }
  });

  $('#sign-in-form').on('submit', validate);
  $('.close').on('click', clearForm);
});

var validate = function(event) {
  event.preventDefault();
    var formData = $("#sign-in-form :input").filter(checkValue).serialize();
    console.log(formData)
  if (formData === '') {
    $('p.login-errors').show();
  } else {
    $('#sign-in-form').trigger('reset');  
    $.post('/sessions', formData);
  }
}

var clearForm = function(event) {
  $('#sign-in-form').trigger('reset');
  $('p.login-errors').hide();
}

var checkValue = function(index, element) {
  return $(element).val() != '';
}

