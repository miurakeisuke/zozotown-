Rails.application.routes.draw do
  root 'user#index'
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
