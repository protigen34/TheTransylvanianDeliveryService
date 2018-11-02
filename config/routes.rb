Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: "user_registrations" }

  resources :products do
    resources :comments
  end

  resources :users

  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get '/products/:id', to: 'products#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#landing_page'
  post 'simple_pages/thank_you'
  post '/payments/create' => 'payments#create'
  
  mount ActionCable.server => '/cable'
end

