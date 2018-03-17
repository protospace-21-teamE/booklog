class BooksController < ApplicationController

  NUMBER_OF_BOOKS_PER_PAGE = 10

  def index
  end

  def show
    book = Book.find(params[:id])
    @book = BookDecorator.new(book)
    @review = book.reviews.where(user_id: current_user.id).first_or_initialize
  end

  def search
    @books = Book.where('name LIKE(?)', "%#{params[:name]}%").includes(:author, :reviews).page(params[:page]).per(NUMBER_OF_BOOKS_PER_PAGE)
    reviews = Review.where(user_id: current_user.id).includes(:book)
    @book_ids = reviews.group(:book_id).count.keys
    @review = Review.new
  end
end
