class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end
	
	def create
		@restaurant = Restaurant.new(restaurant_params)

		if @restaurant.save
		redirect_to @restaurant
	else
		render 'new'
	end
	end 

	def index
		@restaurants = Restaurant.all
	end

	def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end


	def show
  	@restaurant = Restaurant.find(params[:id])
  end 

	private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone)
  end
end
