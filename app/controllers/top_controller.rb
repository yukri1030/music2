class TopController < ApplicationController
  def index
    @comments = Top.all
  end

  def new
  end

  def create
    Top.create(top_params)
    redirect_to root_path,notice: 'コメントを作成しました'
  end

  private
  def top_params
    params.permit(:name, :image, :text)
  end
  
end
