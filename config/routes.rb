Rails.application.routes.draw do
  get 'leagues/show'

  get 'leagues/create'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :leagues

  post 'create', to: 'leagues#create'
  patch 'join', to: 'users#join'

end
