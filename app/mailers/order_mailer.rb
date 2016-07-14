class OrderMailer < ApplicationMailer
  #default from: 'awesomeshop@gmail.com'
  def order_email(email)
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(
      :subject => 'You have new order in rails-yevtushenko',
      :to  => email,
      :from => 'nuncostans@vivaldi.net',
      :html_body => '<strong>Hello from Postmark!<strong>',
      :track_opens => 'true'
    )
  end
end
