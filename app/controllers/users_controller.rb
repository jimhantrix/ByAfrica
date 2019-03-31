class UsersController < ApplicationController


	def show 
		@users = User.friendly.find(params[:id])
	end


	def new 
		render :new 
	end 


end
