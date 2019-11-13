class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.name
    @comments = current_user.tops.page(params[:page]).per(5).order("created_at DESC")
  end
end
