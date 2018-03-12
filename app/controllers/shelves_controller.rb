class ShelvesController < ApplicationController
  before_action :set_shelf

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @shelf.update(shelf_params)
    redirect_to edit_user_shelf_path
  end

  def show
    @user = User.find(params[:user_id])
    @reviews = Review.where(user_id: params[:user_id]).order("id DESC").includes(:book)
    render layout: "shelf_show"
  end

  private
  def set_shelf
    @shelf = Shelf.find(params[:id])
  end

  def shelf_params
    params.require(:shelf).permit(
      :name,
      :description,
      :mode,
      :design,
      :is_public
    ).merge(user_id: params[:user_id])
  end
end
