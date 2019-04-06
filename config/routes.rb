Rails.application.routes.draw do

	# root :to => "categories#index"

	#Users

	get "/users" => "users#index", as: "users"

	get "/users" => "users#new", as: "new_user"

	get "/signup" => "users#new"

	post "/users" => "users#create"

	get "/user/:id" => "users#show", as: "user"


	#Sessions 

	get "/login" => "sessions#new"

	get "/login" => "sessions#create"

	get "/logout" => "sessions#destroy"


	get "/libraries" => "categories#index"
end
