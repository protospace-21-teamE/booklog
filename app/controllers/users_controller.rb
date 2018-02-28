class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :nickname,
      :avatar,
      :description,
      :gender,
      :birth_date,
      :occupation,
      :prefecture,
      :home_town,
      :website_url
    )
  end
end
