$(document).on("turbolinks:load", function() {

  // Filtering
  var $btns = $('.btn').click(function() {
    if (this.id == 'all') {
      $('#parent > div').fadeIn(1000);
    } else {
      var $el = $('.' + this.id).fadeIn(1000);
      $('#parent > div').not($el).hide(1000);
    }
    $btns.removeClass('active');
    $(this).addClass('active');
  })

  setInterval(function() {

//     $.ajax({ url: "/trends/api" })

    $.ajax({ url: '/' })
    .done(function(response) {
      $("#grid").html(response);
    });
  }, 120000);
})
