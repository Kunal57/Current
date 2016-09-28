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
