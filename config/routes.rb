Rails.application.routes.draw do
  devise_for :users
  get 'products/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [:index, :new, :show]
end