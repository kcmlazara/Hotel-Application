Rails.application.routes.draw do
    resources :hotels do 
      resources :reviews
  end
    resources :countries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
