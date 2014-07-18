class RestaurantsController < ApplicationController
	def new
	end
	def create
		@restaurant = Restaurant.new(params[:restaurant])

		@restaurant.save
		redirect_to @restaurant
	end 

	private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone)
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end 
end
