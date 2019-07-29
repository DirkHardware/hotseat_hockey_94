Rails.application.routes.draw do

  get "/players", to: "players#index", as: "players"
  get "/players/:id", to: "players#show", as: "player"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to: "users#show", as: "user"

  get "/picks/new", to: "picks#new", as: "new_pick"

  post "/users", to: "users#create"
  post "/picks", to: "picks#create"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
