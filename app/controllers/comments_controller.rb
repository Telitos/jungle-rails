class CommentsController < ApplicationController

    before_filter :authorize

  def create

    @product = Product.find(params[:product_id])
    @text = params[:comment][:description]
    @user = current_user

    rating  = params[:rating]
    comment = @product.comments.new(description: @text, user_id: @user.id, rating: rating )

    if comment.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    product = Product.find(params[:product_id])
    redirect_to product_path(product)
  end
end
