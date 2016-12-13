class UserMailer < ApplicationMailer

  def order_complete_email(order)
    @order = order
    @url = "http://localhost:3000/orders/#{@order.id}"
    mail(to: "#{@order.email}", subject: "You order# #{@order.id} has been completed!")
  end
end
