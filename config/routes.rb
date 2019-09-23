Rails.application.routes.draw do

  root 'statics#index'

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :registers do
    collection do
      get :list
      post :reset
    end
    member do
      get :printa
      get :printupdate
      post :attendance
      post :checkin
    end
  end

  resources :events do
    collection do
    end
    member do
    end
  end

  resources :polls do
    collection do
    end
    member do
    end
  end

  resources :poll_voters do
    collection do
      post :evote
    end
    member do
    end
  end

  resources :polls_candidates do
    collection do
    end
    member do
    end
  end

  resources :users

  resources :sessions

  get 'statics/login', to: 'statics#login', as: 'modal_login'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
