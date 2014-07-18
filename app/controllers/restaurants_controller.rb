class RestaurantsController < ApplicationController
	def new
	end
	def create
		@restaurant = Restaurant.new(restaurant_params)

		@restaurant.save
		redirect_to @restaurant
	end 

	def show
  	@restaurant = Restaurant.find(params[:id])
  end 

	private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone)
  end
end
