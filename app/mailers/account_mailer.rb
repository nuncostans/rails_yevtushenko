class AccountMailer < ApplicationMailer
  def welcome_email(account)
    @account = account
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(to: 'test@test.test', subject: "Alloha, on this site")
  end
  
end
