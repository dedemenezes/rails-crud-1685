class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # get all the restaurants
    # send it to the view by assigning INSTANCE VARIABLE
    @restaurants = Restaurant.all
  end

  def show
    # raise
    # Retrieve the specific restaurant
    # send it to the view
  end

  def new
    @restaurant = Restaurant.new # is to be used in the form
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    # doesn't have a view
    redirect_to restaurants_path #=> prefix_path => '/restaurants'
  end

  def edit
    # Find the specific restaurant

    # send to the view to display the form
  end

  def update
    # raise
    # 1. Find the specific restaurant

    # 2. Update the restaurant
    @restaurant.update(restaurant_params)
    # 3. Redirect the user somewhere
    redirect_to restaurant_path(@restaurant) #=> "/restaurant/#{@restaurant.id}"
  end

  def destroy

    # 2. Destroy it from the db
    @restaurant.destroy
    # 3. redirect the user somewhere
    redirect_to restaurants_path, status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # STRONG PARAMETERS
  def restaurant_params
    # authorize/permit the fields that I ADDED to the form
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
