class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:profile]
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path, notice: "Account created successfully"
      else
        flash.now[:alert] = @user.errors.full_messages.join(", ")
        render :new
      end
    end
  
    def profile
      @active_borrowings = @current_user.borrowings.active.includes(:book)
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end