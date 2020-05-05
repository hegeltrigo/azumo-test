// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// require("moment/locale/es")
require("tempusdominus-bootstrap-4")
import '../stylesheets/application'
import "cocoon";


// $(document).on('click',".input-group-append", function(){
//   var input = $(this).prev();

//   var id = input.attr('id');

//     if (id) {
//       input
//         .attr('data-target', '#' + id);
//     }

//     input.next().attr('data-target', '#' + id);

//     input.datetimepicker({
//       format: 'MMMM D, YYYY h:mm A',
//       stepping: 15,
//       minDate: $("#datetimepicker2").find("input").val(),
//       maxDate: $("#datetimepicker3").find("input").val(),
//       useCurrent: false,
//       sideBySide: true,
//       icons: {
//         up: 'fas fa-arrow-up',
//         down: 'fas fa-arrow-down',
//         previous: 'fas fa-chevron-left',
//         next: 'fas fa-chevron-right',
//         clear: 'fas fa-trash',
//         close: 'fas fa-times'
//       },
//       buttons: {
//         showClear: true,      
//         showClose: true,
//       }
//     });
// });

$("*").on('cocoon:after-insert', function () { 
  $(".nested-fields .input-group-append").click(function() {
       
  var input = $(this).prev();

  var id = input.attr('id');

    if (id) {
      input
        .attr('data-target', '#' + id);
    }

    input.next().attr('data-target', '#' + id);

    input.datetimepicker({
      format: 'MMMM D, YYYY h:mm A',
      stepping: 15,
      minDate: $("#datetimepicker2").find("input").val(),
      maxDate: $("#datetimepicker3").find("input").val(),
      useCurrent: false,
      sideBySide: true,
      icons: {
        up: 'fas fa-arrow-up',
        down: 'fas fa-arrow-down',
        previous: 'fas fa-chevron-left',
        next: 'fas fa-chevron-right',
        clear: 'fas fa-trash',
        close: 'fas fa-times'
      },
      buttons: {
        showClear: true,      
        showClose: true,
      }
    });

  });

});
