Rails.application.routes.draw do
  root to: "static_pages#index"

  get "users", to: "users#index", as: "users"
  get "users/new", to: "users#new", as: "new_user"
  post "users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
end
