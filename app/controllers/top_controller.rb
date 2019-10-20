class TopController < ApplicationController
  def index
    @comments = Top.all
  end

  def new
  end

  def create
    Top.create(top_params)
  end

  private
  def top_params
    params.permit(:name, :image, :text)
  end
  
end
