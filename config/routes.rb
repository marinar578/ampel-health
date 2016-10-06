Rails.application.routes.draw do

  root 'home#index'
  get '/admin' => 'signups#index'
  resources :signups, except: :index

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users
end
