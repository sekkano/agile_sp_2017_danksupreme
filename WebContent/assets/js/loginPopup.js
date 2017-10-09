$(document).ready(function() {
  $(".social_login").show();
  $(".popupContainer").hide(0).delay(500).fadeIn(2000);
  
  $(".model_close").click(function() {
	  $(".popupContainer").hide();
	  $(".social_login").hide();
	  $(".user_register").hide();
	  $(".user_login").hide();
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
});