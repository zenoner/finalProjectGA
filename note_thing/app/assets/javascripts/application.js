

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
  });

$(document).ready(function(){
  // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
  $('.modal-trigger').leanModal();
});

$('#modal1').openModal();

$('#modal1').closeModal();
