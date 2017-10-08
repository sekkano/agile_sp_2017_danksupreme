(function($) {
  $.fn.extend({
    leanModel: function(options) {
      var defaults = {
        top: 100,
        overlay: 0.5,
        closeButton: null
      };
      var overlay = $("<div id='lean_overlay'></div>");
      $("body").append(overlay);
      options = $.extend(defaults, options);
      return this.each(function() {
        var o = options;
        $(this).click(function(e) {
          var model_id = $(this).attr("href");
          $("#lean_overlay").click(function() {
            close_model(model_id)
          });
          $(o.closeButton).click(function() {
            close_model(model_id)
          });
          var model_height = $(model_id).outerHeight();
          var model_width = $(model_id).outerWidth();
          $("#lean_overlay").css({
            "display": "block",
            opacity: 0
          });
          $("#lean_overlay").fadeTo(200, o.overlay);
          $(model_id).css({
            "display": "block",
            "position": "fixed",
            "opacity": 0,
            "z-index": 11000,
            "left": 50 + "%",
            "margin-left": -(model_width / 2) + "px",
            "top": o.top + "px"
          });
          $(model_id).fadeTo(200, 1);
          e.preventDefault()
        })
      });

      function close_model(model_id) {
        $("#lean_overlay").fadeOut(200);
        $(model_id).css({
          "display": "none"
        })
      }
    }
  })
})(jQuery);


$("#model_trigger").leanModel({
  top: 100,
  overlay: 0.6,
  closeButton: ".model_close"
});

$(function() {
  $("#login_form").click(function() {
    $(".social_login").hide();
    $(".user_login").show();
    return false;
  });

  // Calling Register Form
  $("#register_form").click(function() {
    $(".social_login").hide();
    $(".user_register").show();
    $(".header_title").text('Register');
    return false;
  });

  // Going back to Social Forms
  $(".back_btn").click(function() {
    $(".user_login").hide();
    $(".user_register").hide();
    $(".social_login").show();
    $(".header_title").text('Login');
    return false;
  });
});