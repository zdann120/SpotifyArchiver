class UsersController < ApplicationController
  before_action :authenticate_user!
  def update
    @user = current_user
    if @current_user.update(user_params)
      redirect_to root_path, notice: 'Your email has been updated.'
    else
      redirect_to root_path, alert: 'Sorry, there was a problem changing your email.'
    end
  end
  private

  def user_params
    params.require(:user).permit(:email)
  end
end
