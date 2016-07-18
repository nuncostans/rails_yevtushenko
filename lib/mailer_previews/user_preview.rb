class UserPreview < ActionMailer::Preview
  def user_create
    UserMailer.welcome_user_email(User.first.email)
  end
end
