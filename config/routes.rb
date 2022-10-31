Rails.application.routes.draw do
  resources :posts
  resources :products
  resources :navbars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: "home#index"
end
