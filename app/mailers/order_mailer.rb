class OrderMailer < ApplicationMailer
  default from: 'awesomeshop@gmail.com'
  def order_email(email)
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(to: email, subject: 'Order from Awesome shop')
  end
end
