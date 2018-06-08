Rails.application.routes.draw do
  root 'products#index'
  resources :rankings, only: :index
  resources :users, only: [:index]
  resources :products, only: :index
  resources :brands, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
