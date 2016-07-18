class UserMailer < ApplicationMailer

  def welcome_user_email(user)
    @user = user
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(to: @user.name, subject: "Alloha, on this site #{@url}")
  end
end
