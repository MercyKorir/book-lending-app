class ApplicationController < ActionController::Base
  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    redirect_to login_path unless @current_user
  end

  def authenticate_admin!
    redirect_to root_path, alert: "Access denied" unless @current_user&.admin?
  end
end
