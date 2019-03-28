class UsersController < ApplicationController


	def index 
		@users = User
	end


	def new 
		render :new 
	end 


end
