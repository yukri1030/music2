class TopController < ApplicationController
  def index
    @comments = Top.all
  end

  def new
  end

  def create
    Top.create(nickaname: params[:name], image: params[:image], text: params[:text])
  end
end
