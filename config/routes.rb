Rails.application.routes.draw do
  root to: "static_pages#index"

  get "users", to: "users#index", as: "users"
  get "users/new", to: "users#new", as: "new_user"
  post "users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  get "/tshirts", to: "tshirts#index"
  get "/tshirts/new", to: "tshirts#new", as: "new_tshirt"

end
