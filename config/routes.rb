Rails.application.routes.draw do
  root to: "static_pages#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "delete_user"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  get "/tshirts", to: "tshirts#index", as: "tshirts"
  get "/tshirts/new", to: "tshirts#new", as: "new_tshirt"
  post "/tshirts", to: "tshirts#create"
  get "/tshirts/:id", to: "tshirts#show", as: "tshirt"
  patch "/tshirts/:id", to: "tshirts#update"
  delete "/tshirts/:id", to: "tshirts#destroy", as: "delete_tshirt"

  get "/users/:user_id/tshirts", to: "tshirts#user_tshirts", as: "user_tshirts"
  get "/users/:user_id/tshirts/vote", to: "votes#index", as: "voting"
  get "/users/:user_id/tshirts/:id", to: "tshirts#edit", as: "edit_tshirt"

  post "/tshirts/:tshirt_id/vote", to: "votes#create", as: "vote"

end
