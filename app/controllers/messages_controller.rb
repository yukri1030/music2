class MessagesController < ApplicationController
  def create
  message = Message.create(message_params)
  respond_to do |format|  
    format.html { redirect_to top_path(params[:top_id]) }
    format.json
  end
 end

  private
  def message_params
    params.permit(:text, :top_id, :image, :name)
  end
end
