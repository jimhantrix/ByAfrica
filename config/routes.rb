Rails.application.routes.draw do

	root "categories#index"

	get "/users" => "users#index", as: "users"

	get "/users" => "users#new", as: "new_user"

	get "/signup" => "user#new"

	post "/users" => "users#create"

	get "/user/:id" => "users#show", as: "user"



	get "/login" => "sessions#new"

	get "/login" => "sessions#create"

	get "/logout" => "sessions#destroy"
end
