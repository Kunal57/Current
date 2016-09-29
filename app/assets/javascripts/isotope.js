jQuery(document).ready(function($){
  $('.shuffle-button').on( 'click', function() {
    var $container = $('#grid')
    $container.isotope({
      itemSelector: '.content',
      layoutMode: 'masonry'
    });
    $container.isotope('shuffle');
  });
});

jQuery(document).ready(function($){
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
});

  jQuery(document).ready(function($){
    setInterval(function() {
    console.log("WEeeeeeEEEE!!")

    $.ajax({ url: "/trends/api" })

    $.ajax({ url: '/' })
    .done(function(response) {
      console.log(response);
      $("#grid").html(response);
      console.log($("#grid"))
    });

    $("#grid").ready(function() {
    var $container = $('#grid')
    $container.isotope({
      itemSelector: '.content',
      layoutMode: 'masonry'
    });
    // var times = 10;
    // for(var i=0; i < times; i++){}
    // doSomething();
    $container.isotope('shuffle');
    });

  }, 60000);

});