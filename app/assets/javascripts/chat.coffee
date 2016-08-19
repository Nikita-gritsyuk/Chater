# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

send_message = ->
  App.chat.perform("new_message", {text: $("#new_message_textarea").val()})
  $("#new_message_textarea").val("")

$ ->
  $("#new_message_btn").click ->
    send_message()
    
  $('#new_message_textarea').keydown (e) ->
    if e.ctrlKey and e.keyCode == 13
      send_message()
    