class ReviewsController < ApplicationController
  before_action :set_restaurant
  after_action :authorize_review

  def new
    @review = Review.new
  end

  def create
    # @review = Review.new(review_params)
    # @review.restaurant = @restaurant

    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

  def authorize_review
    authorize @review
  end
end
