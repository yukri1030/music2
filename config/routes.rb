Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  get 'top' => 'top#index'
  get 'top/new' => 'top#new'
  post 'top' => 'top#create'
  delete 'top/:id' => 'top#destroy'
  get   'top/:id/edit'  => 'top#edit'
  patch 'top/:id' => 'top#update'
  get 'users/:id' => 'users#show'
  get 'top/:id' => "top#show"
end