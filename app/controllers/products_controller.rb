class ProductsController < ApplicationController

  #Activate before_filter eventually to restrict access to users only.
  # before_filter :authorize

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @comment = Comment.new
  end
end
