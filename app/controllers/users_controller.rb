class UsersController < ApplicationController

	

	def new 
	end 

	def create 

		user = User.create(first_name: params[:first_name], 
			last_name: params[:last_name],
			 email: params[:email], params[:email],
			 phone: params[:phone],
			 country: params[:country],
			 address: params[:address], 
			 password: params[:password], 
			 avatar: params[:avatar]
			)
		if user.save 
			session[:user_id] = user.id 
			flash[:sucess] = "Sucessfully made account"
		redirect_to "categories"
	else 
		flash[:warning] = "invalid email or password"
		redirect_to "signup"
	end 
	
  end 

end
