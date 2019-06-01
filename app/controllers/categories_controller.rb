class CategoriesController < ApplicationController

	def index 
		@categories = Category.all
	 end 

	 def avatar 
	 end

	 def show 
		@categories = Category.friendly.find_by(params[:id])
		@posts = @category.posts
	 end

	 def edit
	 	@category = Category.friendly.find_by(id: params[:id])
	 end  

	 def update
	 	@category = Category.friendly.find_by(id: paprams[:id])
	 	@category.update(
	 		category: params[:category]
	 	)

	 	if @category.save
	 		flash[:sucess] = "Category Updated"
	 		redirect_to "/category/#{@categories}"
	 	else 
	 		render :edit
	 end 
	end 

	 def search 
	 	@category = Category.friendly.find_by([:id])
	 end

end
