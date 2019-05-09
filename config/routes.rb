Rails.application.routes.draw do
  
  get 'categories/index'
  get 'categories/show'
  devise_for :users
  root 'jobs#index'
  resources :jobs
  resources :categories
  resources :users

  mount Ckeditor::Engine => '/ckeditor'
  # get '/users/:id' => 'users#show', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
