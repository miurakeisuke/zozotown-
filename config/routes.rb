Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'products#index'
  resources :rankings, only: :index

  resources :users, only: [:index] do
    resources :carts, only: [:show, :update, :destroy] do
      resources :orders, only: [:index, :new] do
        collection do
          post 'pay'
        end
      end
    end
  end

  resources :products, only: [:index, :show] do
    resources :contacts, only: [:create, :destroy]
  end
  resources :brands, only: :index
  resources :sitemaps, only: :index
  resources :shops, only: :index

  resources :product_carts, only: [:create, :update]
  resources :constructions, only: [:index]
  resources :warehouses, only: [:new, :edit, :update, :show, :create]
  resources :deposits, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
