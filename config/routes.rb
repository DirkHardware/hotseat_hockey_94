Rails.application.routes.draw do
<<<<<<< HEAD
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'seasons/index'
  # get 'seasons/new'
  # get 'seasons/create'
  # get 'seasons/show'
  # get 'seasons/destroy'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  # get 'users/destroy'

  root 'sessions#new'

  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create'
  get '/seasons/new', to: 'seasons#new'
  post '/seasons/new', to: 'seasons#create'
  delete '/logout', to: 'sessions#destroy', as: 'destroy_user_session'
  get '/welcome', to: 'users#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#batch_create' 
  # post '/signup', to: 'users#create'
  
=======

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"

  get "/players", to: "players#index", as: "players"
  get "/players/:id", to: "players#show", as: "player"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to: "users#show", as: "user"

  get "/picks/new", to: "picks#new", as: "new_pick"

  post "/users", to: "users#create"
  post "/picks", to: "picks#create"

  delete "/logout", to: "sessions#destroy"
  

>>>>>>> testmaster
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
