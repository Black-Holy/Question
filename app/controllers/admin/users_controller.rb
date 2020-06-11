class Admin::UsersController < ApplicationController
  before_action :admin_user
  
  def index
    @users = User.all.order(id: "ASC")
  end
  
  private
  def admin_user
    redirect_to calendars_path unless current_user.admin?
  end
end
