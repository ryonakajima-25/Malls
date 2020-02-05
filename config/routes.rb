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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
