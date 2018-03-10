class ReviewsController < ApplicationController
  def create
    review = Review.new(create_params)
    review.save
    book = review.book
    redirect_to book_path(book)
  end

  private

  def create_params
    params.require(:review).permit(:is_public, :reading_status).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
