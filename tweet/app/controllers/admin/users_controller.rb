class Admin::UsersController < ApplicationController
  before_action :admin_user
  
  def index
    @users = User.all.order(id: "ASC")
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end
  
  private
  def admin_user
    redirect_to calendars_path unless current_user.admin?
  end
end
