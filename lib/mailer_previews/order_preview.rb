class OrderPreview < ActionMailer::Preview
  def order_create
    OrderMailer.order_email(Account.name)
  end
end
