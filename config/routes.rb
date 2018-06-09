Rails.application.routes.draw do
  root 'products#index'
  resources :rankings, only: :index
  resources :users, only: [:index]
  resources :products, only: :index
  resources :brands, only: :index
  resources :carts, only: [:show, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
