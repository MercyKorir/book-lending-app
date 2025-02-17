module Admin
    class UsersController < ApplicationController
      before_action :authenticate_admin!
  
      def toggle_admin
        user = User.find(params[:id])
        user.update(admin: !user.admin)
        redirect_to admin_dashboard_path, notice: "User role updated"
      end
    end
  end
  