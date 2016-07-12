class OrderPreview < ActionMailer::Preview
  def welcome
    OrderMailer.order_email(email)
  end
end
