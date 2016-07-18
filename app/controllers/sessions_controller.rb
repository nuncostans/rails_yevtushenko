class SessionsController < Devise::SessionsController
  def destroy
    super
    flash[:danger] = "You have logged out"
  end
end
