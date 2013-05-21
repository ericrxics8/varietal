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
//= require_tree .
//
// Loads all Bootstrap javascripts
//= require bootstrap
//= require jquery.fancybox.pack.js
//= require jquery.bpopup.min.js

$(document).ready(function() {
  $('#signinbtn').bind('click', function(e) {
    e.preventDefault();
    $('#hiddenSingup').hide();
    $('#hiddenSingin').bPopup({
      zIndex:2,
      modalClose:true
    });
  });

  $('#signupbtn').bind('click', function(e) {
    e.preventDefault();
    $('#hiddenSingin').hide();
    $('#hiddenSingup').bPopup({
      zIndex:2,
      modalClose:true
    });
  });

});




