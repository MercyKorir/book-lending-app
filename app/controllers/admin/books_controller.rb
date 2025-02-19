module Admin
  class BooksController < ApplicationController
    before_action :authenticate_admin!

    def index
      @books = Book.all
    end

    def new
      @book = Book.new
    end

    def search
      @book = Book.new
      if params[:isbn].present?
        book_data = OpenLibraryService.fetch_book(params[:isbn])
        
        if book_data.nil?
          flash.now[:alert] = "Book not found in Open Library"
        else
          @book = Book.new(book_data.merge(visible: true))
          flash.now[:notice] = "Book found! Review the details below"
        end
      end
      render :search
    end

    def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to admin_books_path, notice: "Book created successfully"
      else
        render :search
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

    def toggle_visibility
      @book = Book.find(params[:id])
      @book.update(visible: !@book.visible)
      redirect_to admin_books_path, notice: "Visibility updated"
    end

    private

    def book_params
      params.require(:book).permit(:title, :author, :isbn, :cover_url, :synopsis, :visible)
    end
  end
end