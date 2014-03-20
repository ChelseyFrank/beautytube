# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#hair').click ->
    return if $('#hair').find('.category-choices').hasClass('active')

    $('#hair').find('.category-choices').toggleClass('active')
    $('#hair.box').animate({"height":"200px" }, 'slow')
    $('#hair').find('.category-choices').slideDown('slow')



  $('#face').click ->
    return if $('#face').find('.category-choices').hasClass('active')

    $('#face').find('.category-choices').toggleClass('active')
    $('#face.box').animate({"height":"200px" }, 'slow')
    $('#face').find('.category-choices').slideDown('slow')

  $('#body').click ->
    return if $('#body').find('.category-choices').hasClass('active')

    $('#body').find('.category-choices').toggleClass('active')
    $('#body.box').animate({"height":"200px" }, 'slow')
    $('#body').find('.category-choices').slideDown('slow')

  $('.category-choices').click ->
    foo = this.id
    console.log(foo)

