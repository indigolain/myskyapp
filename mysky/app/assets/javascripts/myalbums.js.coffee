# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("a.grouped_elements").fancybox({
    'overlayColor'  : '#000000',
    'overlayOpacity': 0.7,
    'speedIn'       : 600,
    'speedOut'      : 200,
  });
