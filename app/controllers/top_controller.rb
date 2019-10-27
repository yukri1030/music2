class TopController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @comments = Top.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Top.create(top_params)
    redirect_to root_path,notice: 'コメントを作成しました'
  end

  def destroy
    # binding.pry
    comment = Top.find(params[:id])
    if comment.user_id == current_user.id
      comment.destroy
    end
  end

  private
  def top_params
    params.permit(:name, :image, :text, :id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
