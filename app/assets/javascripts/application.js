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

$(document).ready(function(){

// PITCH show view
    var $show = $.trim($(".show-text-in").text());
    console.log($show)
    var converter = new showdown.Converter(),
    show_text      = $show
    show_html     = converter.makeHtml(show_text);
    $(".html").html(show_html);

//PITCH update view
   var $input = $(".form-text-in")[0].value;
    var converter = new showdown.Converter(),
    text      = $input
    html      = converter.makeHtml(text);
    $(".html").html(html);
  
//PITCH create view
  $(".form-text-in").on( "keyup", function(e){
    e.preventDefault();
    var $input = $(this)[0].value;
    var converter = new showdown.Converter(),
    text      = $input
    html      = converter.makeHtml(text);
    console.log("form text ")
    $(".html").html(html);
  }) //end of form-text-in function

}); //end of document


