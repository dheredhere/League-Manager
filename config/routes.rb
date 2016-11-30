Rails.application.routes.draw do
  get 'leagues/show'

  get 'leagues/create'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :leagues
  resources :matches

  post 'create', to: 'leagues#create'
  post 'create_match', to: 'matches#create'
  patch 'join', to: 'users#join'
  patch 'delete_league', to: 'leagues#destroy'

end
