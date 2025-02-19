class BorrowingsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      book = Book.find(params[:book_id])
      
      if book.available?
        borrowing = @current_user.borrowings.create(book: book)
        if borrowing.persisted?
          redirect_to book_path(book), notice: "Book borrowed successfully"
        else
          redirect_to book_path(book), alert: "Maximum Borrowing Limit Reached"
        end
      else
        redirect_to book_path(book), alert: "Book is already borrowed"
      end
    rescue ActiveRecord::RecordInvalid
      redirect_to book_path(book), alert: "Book is not available"
    end
  
    def return
      borrowing = @current_user.borrowings.active.find_by(id: params[:id])
    
      if borrowing
        borrowing.return!
        redirect_to profile_path, notice: "Book returned successfully"
      else
        redirect_to profile_path, alert: "Invalid borrowing record"
      end
    end
end