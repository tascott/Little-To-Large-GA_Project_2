class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
  end

  # def show
  #   @user = current_user 
  # end


  def show
    # current_user.update_attribute :admin, true
     @user = User.find(params[:id])

     if (@user && @user == current_user) || current_user.admin? 
       render 'show'
     else
       redirect_to root_path
     end
  end
end
