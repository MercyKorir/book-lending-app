module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_admin!

    def index
      @books = Book.all
      @users = User.all
    end
  end
end