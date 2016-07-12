class AccountMailer < ApplicationMailer
  def welcome_email(account)
    @account = account
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(to: @account.name, subject: "Alloha, on this site")
  end
  
end
