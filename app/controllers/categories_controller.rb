class CategoriesController < ApplicationController

	def index 

		@cateogries = Category.all 

		render :index

	end 

end
