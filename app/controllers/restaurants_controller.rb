class RestaurantsController < ApplicationController
	def new
	end
	def create
		render plain: params[:restaurant].inspect
	end 
end
