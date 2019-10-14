Rails.application.routes.draw do
  root 'top#index'
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions' , 
  :passwords => "users/passwords"
} 

devise_scope :user do
  # get "/signup", :to => "users/registrations#new"
  get "signup" , to: "users/registrations#new"
end
end