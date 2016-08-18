# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#new_message_btn").click ->
    App.chat.perform("new_message", {text: $("#new_message_textarea").val()})
    $("#new_message_textarea").val("")
    
  $('#textareaId').keydown (e) ->
    if e.ctrlKey and e.keyCode == 13
      # Ctrl-Enter pressed
    else