module Admin
    class BorrowingsController < ApplicationController
      before_action :authenticate_admin!
  
      def force_return
        borrowing = Borrowing.active.find(params[:id])
        if borrowing.return!
          redirect_to borrowed_admin_books_path, notice: "Book has been force returned"
        else
          redirect_to borrowed_admin_books_path, alert: "Failed to return the book"
        end
      rescue ActiveRecord::RecordNotFound
        redirect_to borrowed_admin_books_path, alert: "Borrowing record not found"
      end
    end
end