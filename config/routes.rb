Rails.application.routes.draw do
  devise_for :users
  get '/users', to: 'users#index'

  post '/appointment/new', to: 'appointment#create' 

  post '/user_session', to: 'sessions#create'
  
  root 'pages#index'
  resources :users, only: [:show, :edit, :delete]
  resources :doctors#, only: [:show, :edit, :delete]
  resources :appointments #only: [:show, :edit, :delete]
end
