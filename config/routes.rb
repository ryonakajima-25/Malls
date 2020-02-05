Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :spaces 
  resources :brands 
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
