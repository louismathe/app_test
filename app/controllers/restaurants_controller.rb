class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  def top
    @top_restaurants = Restaurant.where(stars: 3)
  end

  def chef

  end

  def index
     @restaurants = policy_scope(Restaurant)

  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    authorize @restaurant

  end

  def create
    @restaurant = current_user.restaurants.build(restaurant_params)
    authorize @restaurant

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description, :photo)
  end

end
