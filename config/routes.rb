Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  get 'top/new' => 'top/new'
end