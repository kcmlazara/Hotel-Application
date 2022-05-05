require "sidekiq/web"
Rails.application.routes.draw do
  devise_for :users
  mount Sidekiq::Web => "/sidekiq"

  resources :hotels do 
    resources :reviews
  end
  resources :countries
  resources :notifications
  
  resources :cars do
    member do 
      patch :move
    end
  end
  root to: 'hotels#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end