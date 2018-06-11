Rails.application.routes.draw do
  root 'products#index'
  resources :rankings, only: :index
  resources :users, only: [:index]
  resources :products, only: [:index, :show]
  resources :brands, only: :index
  resources :shops, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
