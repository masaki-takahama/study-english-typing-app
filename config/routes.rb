Rails.application.routes.draw do
  devise_for :users
  root to: "phrases#index"
  resources :users, only: [:edit, :update]
  resources :phrases
end
