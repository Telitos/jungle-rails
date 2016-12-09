class UserMailer < ApplicationMailer


  def order_complete_email(user, order)
    @user = user
    # @line_items = details
    @order = order
    @url = "http://localhost:3000/orders/#{@order.id}"
    mail(to: @user.email, subject: "You order# #{@order.id} has been completed!")
  end

end
