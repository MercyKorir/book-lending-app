class BooksController < ApplicationController
    def index
      @query = params[:query]
      @books = Book.visible.order(created_at: :desc)

      if @query.present?
        @books = @books.where('title LIKE :query OR author LIKE :query OR isbn LIKE :query',
                query: "%#{@query}%")
      end
    end
  
    def show
      @book = Book.find(params[:id])
    end
end