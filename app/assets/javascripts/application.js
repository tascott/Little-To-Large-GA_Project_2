//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require foundation
//= require_tree .



$(document).ready(function(){
  
  $('.login-container').addClass("none");

  $('.sign_in').click(function() {
    $('.login-container').slideToggle();

  });


  $('#myPassword').strength({
    strengthClass: 'strength',
    strengthMeterClass: 'strength_meter',
    strengthButtonClass: 'button_strength',
    strengthButtonText: 'Show password',
    strengthButtonTextToggle: 'Hide Password'
  });     

});


