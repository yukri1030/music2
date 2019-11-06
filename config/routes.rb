Rails.application.routes.draw do
  devise_for :users
  
  root 'top#index'
  resources :top do
    resources :messages, only: [:create]
  end
  resources :users, only: [:show]
end