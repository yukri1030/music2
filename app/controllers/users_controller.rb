class UsersController < ApplicationController
  def show
    @nickname = current_user.name
    @comments = Top.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end
end
