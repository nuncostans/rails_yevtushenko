class UserController < ApplicationController
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end
end
