class BooksController < ApplicationController

  def index
  end

  def show
    book = Book.find(params[:id])
    @book = BookDecorator.new(book)
  end

end
