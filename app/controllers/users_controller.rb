class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def show
    source = User.find(params[:id])
    @user = UserDecorator.new(source)
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
