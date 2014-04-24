// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.ba-dotimeout.min

//called when the page is fully loaded
var ready = function()
{
  $('#flash_div').click(function(){$('#flash_div').fadeOut("fast");});
  
  //flash the div
  re_flash();
  
  //re-assign all the time. circumvent turbolinks
  $("#add_to_cart_link").click(function(event)
  {
    $.get( $("#add_to_cart_url").attr("var"), function( data ) {
      $( ".result" ).html( data );
      window.location.replace($("#current_url").attr("var"));
    });
    event.preventDefault();
  });
  
  $("#submit_cart_link").click(function(event)
  {
    $.post(
          $("#submit_cart_url").attr("var"),
            {first_name:$("#first_name").val(),
            last_name:$("#last_name").val(),
            address:$("#address").val(),
            city:$("#city").val(),
            province:$("#province").val()},
          function( data ) {
      $( ".result" ).html( data );
      window.location.replace($("#go_to_url").attr("var"));
    });
    event.preventDefault();
  });
};

//just flashes the flash_div
var re_flash = function()
{
  $.doTimeout( 'timeout', 4000, function(){$('#flash_div').fadeOut("slow");});
}


$(document).ready(ready);
$(document).on('page:load', ready);