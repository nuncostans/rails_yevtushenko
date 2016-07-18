class UserMailer < ApplicationMailer
  
  def welcome_user_email(user)
    @user = account
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(to: @user.name, subject: "Alloha, on this site")
  end

end
