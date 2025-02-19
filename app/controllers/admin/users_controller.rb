module Admin
    class UsersController < ApplicationController
      before_action :authenticate_admin!
  
      def toggle_admin
        user = User.find(params[:id])
        if user.update(admin: !user.admin)
          redirect_to admin_dashboard_path, notice: "User role updated"
        else
          redirect_to admin_dashboard_path, alert: "Failed to update user role"
        end
      end
    end
  end
  