Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :spaces do
    resources :likes, only: [:create, :destroy]
  end
  resources :brands do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
  resources :messages, only: [:create]
  resources :conversations, only: [:create, :show, :index] 
end
