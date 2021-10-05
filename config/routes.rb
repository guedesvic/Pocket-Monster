Rails.application.routes.draw do

  namespace :site do
    get 'welcome/index'
  end

  namespace :trainers_backoffice do
    get 'welcome/index'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
  end
  
  devise_for :trainers
  
  resources :teams
    
  resources :pokemon, only: [:index]

  get '/home', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
