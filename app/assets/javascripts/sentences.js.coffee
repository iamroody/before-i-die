# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'blur', '.dashboard input:text', ->
    form = $(this).closest('form')
    form.submit()

  $(document).on 'ajax:complete', '.dashboard form', (event, xhr, status) ->
    $(this).closest('li').html xhr.responseText