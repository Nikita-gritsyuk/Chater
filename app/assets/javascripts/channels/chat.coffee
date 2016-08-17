App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    alert("connected")
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    tpl = _.template($("#templates > .media.msg")[0].outerHTML)
    html=tpl(data)
    $(html).appendTo(".msg-wrap").show(300);
