$(document).on("turbolinks:load", function() {


    $('.shuffle-button').on( 'click', function() {
    var $container = $('#grid')
    $container.isotope({
      itemSelector: '.content',
      layoutMode: 'masonry'
    });
    $container.isotope('shuffle');
    });


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
    $container.isotope('shuffle');
    });

  }, 60000);
})

// var ready;

// ready = function() {


// };

// $(document).ready(ready);
// $(document).on("page:load", ready);

// $(document).on("turbolinks:load", function() {
//   alert("I AM WORKING!#$%!@#$%^@")
// });