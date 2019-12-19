Rails.application.routes.draw do
  devise_for :developers
  root "spaces#index"
  resources :spaces, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
