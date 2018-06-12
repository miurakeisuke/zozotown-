Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :rankings, only: :index
  resources :users, only: [:index]
  resources :products, only: [:index, :show]
  resources :brands, only: :index
  resources :carts, only: [:show, :update, :destroy]
  resources :shops, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
