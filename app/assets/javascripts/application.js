// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs

//= require_tree .


window.onload = function() {
       $(document).foundation();
};

// tinymce.init({
//   selector: "textarea",  // change this value according to your html
//   plugins: "textcolor link media image code table preview hr searchreplace wordcount visualblocks visualchars imagetools help insertdatetime directionality lists",
//   toolbar: "undo redo | styleselect | bold italic | bullist numlist | forecolor backcolor media image link sizeselect fontselect code",
//   textcolor_map: [
//    "000000", "Black",
//    "FFFFFF", "White",
//    "41887A", "DESC green"
//  ],
//   image_advtab: true,
//   height : "480"
// });
