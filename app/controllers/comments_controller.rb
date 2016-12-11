class CommentsController < ApplicationController

    before_filter :authorize

  def create

    @product = Product.find(params[:product_id])
    @text = params[:comment][:description]
    @user = current_user.id
    @comment = Comment.new
    rating  = params[:comment][:rating]

    comment = @product.comments.new(description: @text, user_id: @user, rating: rating )


    if comment.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
      # render "products/show"
    end

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    product = Product.find(params[:product_id])
    redirect_to product_path(product), notice: 'Comment deleted!'
  end



end
