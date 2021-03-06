$(document).ready(function() {
  $(".social_login").show();
  $(".popupContainer").hide(0).delay(500).fadeIn(2000);
  $("#SiteInfo").animate({opacity: .1}, { duration: 2500 });
  
  $(".model_close").click(function() {
	  $(".popupContainer").hide();
	  $(".social_login").hide();
	  $(".user_register").hide();
	  $(".user_login").hide();
	  $("#SiteInfo").animate({opacity: 1}, { duration: 2500 });
	});

	$("#register_form").click(function() {
	  $(".social_login").hide();
	  $(".user_register").show();
	  $(".header_title").text('Register');
	});

	$("#login_form").click(function() {
	  $(".social_login").hide();
	  $(".user_login").show();
	  $(".header_title").text('Login');
	});

	$(".back_btn").click(function() {
	  $(".user_login").hide();
	  $(".user_register").hide();
	  $(".social_login").show();
	  $(".header_title").text('Login');
	});
	
	document.onkeydown = function (evt) {
	    evt = evt || window.event;
	    if (evt.keyCode == 27) {
	        $('.popupContainer').hide();
	    }
	};
});