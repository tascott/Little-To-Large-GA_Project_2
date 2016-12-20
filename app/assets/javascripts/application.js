//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require foundation
//= require bootstrap
//= require bootstrap-datepicker

//= require_tree .

var test;

$(document).on("ready page:load" , function(){
  
  console.log($('.login-container'));
  test = $('.login-container');
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



$(function(){ $(document).foundation(); });
