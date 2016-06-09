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

  var stickySidebar = $('.sticky');

  if (stickySidebar.length > 0) { 
    var stickyHeight = stickySidebar.height(),
        sidebarTop = stickySidebar.offset().top;
  }

  // on scroll move the sidebar
  $(window).scroll(function () {
    if (stickySidebar.length > 0) { 
      var scrollTop = $(window).scrollTop();
              
      if (sidebarTop < scrollTop) {
        stickySidebar.css('top', scrollTop - sidebarTop);

        // stop the sticky sidebar at the footer to avoid overlapping
        var sidebarBottom = stickySidebar.offset().top + stickyHeight,
            stickyStop = $('.main-content').offset().top + $('.main-content').height();
        if (stickyStop < sidebarBottom) {
          var stopPosition = $('.main-content').height() - stickyHeight;
          stickySidebar.css('top', stopPosition);
        }
      }
      else {
        stickySidebar.css('top', '0');
      } 
    }
  });

  $(window).resize(function () {
    if (stickySidebar.length > 0) { 
      stickyHeight = stickySidebar.height();
    }
  });

});


