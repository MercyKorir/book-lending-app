module Admin
    class BooksController < ApplicationController
      before_action :authenticate_admin!
  
      def index
        @books = Book.all
      end
  
      def new
        @book = Book.new
      end
  
      def create
        @book = Book.new(book_params)
        if @book.save
          redirect_to admin_books_path, notice: "Book created successfully"
        else
          render :new
        end
      end
  
      def edit
        @book = Book.find(params[:id])
      end
  
      def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
          redirect_to admin_books_path, notice: "Book updated successfully"
        else
          render :edit
        end
      end
  
      def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to admin_books_path, notice: "Book deleted successfully"
      end
  
      private
  
      def book_params
        params.require(:book).permit(:title, :author, :isbn)
      end
    end
  end
  