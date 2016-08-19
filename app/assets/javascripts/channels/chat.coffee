App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    $.growl
      title: "Connected!",
      message: "connection established" 
      style: "notice"

  disconnected: ->
    $.growl
      title: "ERROR!",
      message: "connection lost, trying to reconnect..." 
      style: "error"
      
  received: (data) ->
    msg_wrap = $(".msg-wrap");
    tpl = _.template($("#templates > .media.msg")[0].outerHTML);
    html=tpl(data)
    $(html).appendTo(msg_wrap).show(100);
    msg_wrap.animate({scrollTop: msg_wrap[0].scrollHeight}, 100);
    