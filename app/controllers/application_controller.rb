class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception 

	include SessionsHelper 


	# def current_user 
	
	# 	@current_user || = User.find_by(id: session[:user_id]) if session[:user_id]

	# end 

	# helper_method :current_user

	# def aunthenticate_user!

	# 	redirect_to '/login' unless current_user

	# end 


end
