Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :rankings, only: :index
  resources :users, only: [:index] do
    resources :carts, only: [:show, :update, :destroy]
  end
  resources :products, only: [:index, :show]
  end
  resources :brands, only: :index
  resources :carts, only: [:show, :update, :destroy]
  resources :shops, only: :index
  resources :payments, only: :index
  resources :orders, only: [:index, :new]
  resources :product_carts, only: [:create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
