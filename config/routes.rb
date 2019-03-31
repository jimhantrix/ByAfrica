Rails.application.routes.draw do

	root "users#index"

	get "/users" => "users#index", as: "users"

	get "/users" => "users#new", as: "new_user"

	get "/signup" => "user#new"

	post "/users" => "users#create"



	get "/login" => "sessions#new"

	get "/login" => "sessions#create"

	get "/logout" => "sessions#destroy"
end
