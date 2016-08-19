# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat:1"
  end
  
  def new_message(data)
    ChatChannel.broadcast_to "1", {name: current_user.name, time: Time.now, text: data["text"]}
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
