Rails.application.routes.draw do

  root 'statics#index'

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :registers do
    collection do
      get :list
    end
    member do
      get :printa
      get :printupdate
    end
  end

  resources :users

  resources :sessions

  get 'statics/login', to: 'statics#login', as: 'modal_login'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
