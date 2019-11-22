class MessagesController < ApplicationController
  def create
  @message = Message.create(text: message_params[:text], top_id: message_params[:top_id], user_id: current_user.id)
  respond_to do |format|  
    format.html { redirect_to top_path(params[:top_id]) }
    format.json
  end
 end

  private
  def message_params
    params.permit(:text, :top_id, :image, :user_id)
  end
end
