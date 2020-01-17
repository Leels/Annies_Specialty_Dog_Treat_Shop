class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

end
