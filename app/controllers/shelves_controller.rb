class ShelvesController < ApplicationController
  before_action :set_shelf

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    if @shelf.update(shelf_params)
      redirect_to edit_user_shelf_path
    else
      flash.now[:alert] = "本棚の更新ができませんでした"
      render :edit
    end
  end

  def show
    @user = User.find(params[:user_id])
    @reviews = @user.reviews.order("id DESC").includes(:book)
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
