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
//= require turbolinks
//= require_tree .




$(function() {
  $('.notes').hide()
    console.log( "ready!!" );

    $('.show_notes').click(function(){
      console.log('should show all')
      $(this).parent().children(".notes").toggle();
    });

    //show and hide pretty easy, just needs to be styled for it to look pretty
});

 $(document).ready(function(){
  console.log("script loaded")
    $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });

  // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
  $('.modal-trigger').leanModal();


  // $('#modal1').openModal();

  // $('#modal1').closeModal();
}); // ends do cready


