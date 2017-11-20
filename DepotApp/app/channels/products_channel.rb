class ProductsChannel < ApplicationCable::Channel
  #Create a channel is by updating the file and 
  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
