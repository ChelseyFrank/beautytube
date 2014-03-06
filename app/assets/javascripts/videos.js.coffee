# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#hair').click ->
    # return if $('#hair').find('.category-choices').hasClass('active')

    $('#hair').find('.category-choices').toggleClass('active')
    $('#hair').find('.category-choices').slideToggle('slow')

  $('#face').click ->
    return if $('#face').find('.category-choices').hasClass('active')

    $('#face').find('.category-choices').toggleClass('active')
    $('#face').find('.category-choices').slideToggle('slow')

  $('#body').click ->
    return if $('#body').find('.category-choices').hasClass('active')

    $('#body').find('.category-choices').toggleClass('active')
    $('#body').find('.category-choices').slideToggle('slow')