class UsersController < ApplicationController

  def index
    @users = User.all  
  end
  
  def update_role
    @user = User.find(params[:id])
    if @user.admin?  
      @user.update(role: :common)
    else
      @user.update(role: :admin)
    end
    redirect_to users_path
  end

end
