Rails.application.routes.draw do
  devise_for :users
  get '/users', to: 'users#index'

  root 'pages#index'
  resources :users, only: [:show, :edit, :delete]
  resources :doctors, only: [:show, :edit, :delete]
  resources :appointment #only: [:show, :edit, :delete]
end
