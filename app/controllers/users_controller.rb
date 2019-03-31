class UsersController < ApplicationController

	def show 
		@users = User.friendly.find(params[:id])
	end


	def new 
		render :new 
	end 

	def create 

		user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], params[:email], phone: params[:phone], country: params[:country], address: params[:address], password: params[:password])
		redirect_to_users_path

end
