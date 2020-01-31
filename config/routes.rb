Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  root 'jobs#index'
  
  resources :jobs
  resources :categories
  resources :users
  resources :tags, only: [:index, :show]

  get '/admin123', to: 'users#admin123'
  get '/new-jobs', to: 'users#newjobs'

  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unprocessable_entity'
  get '/500', to: 'errors#internal_server_error'

  get 'errors/not_found'
  get 'errors/unacceptable'
  get 'errors/internal_error'
  get 'categories/index'
  get 'categories/show'

  get '/about', to: 'static_pages#about'
  get '/terms', to: 'static_pages#terms'
  get '/privacy', to: 'static_pages#privacy'
  get '/contact', to: 'static_pages#contact'

  mount Ckeditor::Engine => '/ckeditor'
  # get '/users/:id' => 'users#show', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
