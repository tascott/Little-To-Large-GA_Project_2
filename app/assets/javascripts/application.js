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

});


