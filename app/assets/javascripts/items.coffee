# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#item_PRIJ_OTC').autocomplete
    source: $('#item_PRIJ_OTC').data('autocomplete-source')
