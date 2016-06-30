Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  
   root 'posts#index'

  # Example of regular route:
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  
  post 'posts/create'
  get 'posts/destroy'
  get 'users/sign_in'
  get 'users/sign_out'
  

end
