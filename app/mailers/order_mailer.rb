class OrderMailer < ApplicationMailer
  default from: 'awesomeshop@gmail.com'
  def order_email(email)
    @url = 'https://rails_yevtushenko.herokuapp.com'
    mail(
      :subject => 'hello',
      :to  => email,
      :from => 'sender@example.com',
      :html_body => '<strong>Hello from Postmark!<strong>',
      :track_opens => 'true'
    )
  end
end
