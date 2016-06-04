class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
  end

  # def show
  #   @user = current_user 
  # end


  def show
     @user = User.find(params[:id])
     if @user && @user == current_user 
       render 'show'
     else
       redirect_to root_path
     end
  end

end
