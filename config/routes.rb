Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root 'products#index'
  resources :rankings, only: :index
  resources :users, only: [:index] do
    resources :carts, only: [:show, :update, :destroy]
  end
  resources :products, only: [:index, :show]
  resources :brands, only: :index
  resources :sitemaps, only: :index
  resources :carts, only: [:show, :update, :destroy]
  resources :shops, only: :index
  resources :users, only: [:index] do
    resources :payments, only: :index
  end
  resources :orders, only: [:index, :new]
  resources :product_carts, only: [:create, :update]
  resources :constructions, only: [:index]
  resources :warehouses, only: [:new, :edit, :update, :show, :create]
  resources :deposits, only: [:index, :new, :edit, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
