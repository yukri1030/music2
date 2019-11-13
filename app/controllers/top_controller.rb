class TopController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @comments = Top.includes(:user).order('created_at DESC').page(params[:page]).per(6)
  end

  def new
  end

  def create
    Top.create(top_params)
    redirect_to root_path,notice: 'コメントを作成しました'
  end

  def destroy
    comment = Top.find(params[:id])
    if comment.user_id == current_user.id
      comment.destroy
    end
  end

  def edit
    @comment = Top.find(params[:id])
  end

  def update
    comment = Top.find(params[:id])
    comment.update(top_params) if comment.user_id == current_user.id
  end

  def show
    @comment = Top.find(params[:id])
    @messages = @comment.messages.includes(:user)
  end

  private
  def top_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
