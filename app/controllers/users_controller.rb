class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :new]
  before_action :check_authorization, only: [:edit, :update, :new]
  before_action :set_user

  def new 
  end 

  def show
  end

  def edit
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User information updated"
      redirect_to edit_user_registration_path
    else
      flash[:error] = "Invalid user information"
      redirect_to edit_user_registration_path
    end 
  end

  private 

    def user_params
      params.require(:user).permit(:name, :avatar)
    end

    def check_authorization
      unless current_user.id == params[:id]
        redirect_to root_url
      end
    end

    def set_user
      @user = User.find(params[:id])      
    end
end
