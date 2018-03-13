class BooksController < ApplicationController

  def index
  end

  def show
    book = Book.find(params[:id])
    @book = BookDecorator.new(book)
    @review = book.reviews.where(user_id: current_user.id).first_or_initialize
  end

  def search
    @books = Book.where('name LIKE(?)', "%#{params[:name]}%")
  end

end
