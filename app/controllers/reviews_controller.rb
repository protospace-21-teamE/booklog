class ReviewsController < ApplicationController
  def create
    review = Review.new(create_params)
    review.save
    book = review.book
    redirect_to book_path(book)
  end

  private

  def create_params
    params.permit(:book_id).merge(user_id: current_user.id)
  end
end
