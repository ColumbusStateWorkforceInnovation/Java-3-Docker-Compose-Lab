Rails.application.routes.draw do
  resources :rentals
  resources :orders
  resources :order_line_items
  resources :employees
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
