(function poll() {
  setTimeout(function() {
    $.ajax({
      url: "/trends/api",
      success: function(response) {
        console.log(response)
        poll()
        // update the dom
      }
    });
  }, 120000)})();



