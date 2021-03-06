// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.bpopup.min.js
//= require jquery.chart.min.js
//= require jquery.isotope.min.js
//= require ckeditor/init
//= require floatlabels.min.js
//= require_tree .


$(document).ready(function() {
  $('.signinbtn').bind('click', function(e) {
    e.preventDefault();
    document.getElementsByClassName("signupbtn").disabled = true;
    $('.hiddenSingup').hide();
    $('.hiddenSingin').bPopup({
      zIndex:2,
      modalClose:true,
      onClose: function(){
        document.getElementsByClassName("signupbtn").disabled = false;
      }
    });
  });

  $('.signupbtn').bind('click', function(e) {
    e.preventDefault();
    document.getElementsByClassName("signinbtn").disabled = true;
    $('.hiddenSingin').hide();
    $('.hiddenSingup').bPopup({
      zIndex:2,
      modalClose:true,
      onClose: function(){
        document.getElementsByClassName("signinbtn").disabled = false;
      }
    });
  });


});




