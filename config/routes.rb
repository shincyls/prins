Rails.application.routes.draw do

  root 'registers#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :registers do
    collection do
      get :list
    end
    member do
      get :printa
      get :printb
      get :printc
      get :printd
      get :printe
    end
  end

  resources :users

  resources :sessions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
