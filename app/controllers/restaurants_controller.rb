class RestaurantsController < ApplicationController
	def new
	end
	def create
		@restaurant = Restaurant.new(params[:restaurant])

		@restaurant.save
		redirect_to @restaurant
	end 
end
