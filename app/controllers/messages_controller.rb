class MessagesController < ApplicationController
  def create
     message = Message.create(name: message_params[:name], text: message_params[:text], top_id: message_params[:top_id], user_id: current_user.id)
    redirect_to "/top/#{message.top.id}"
  end

  private
  def message_params
    params.permit(:text, :top_id, :image, :name)
  end
end
