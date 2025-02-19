class BooksController < ApplicationController
    def index
      @books = Book.visible.order(created_at: :desc)
    end
  
    def show
      @book = Book.find(params[:id])
    end
end