Rails.application.routes.draw do
  

  resources :friendships, :path => 'friends' do
    get '/status', to: 'friends#status', on: :member
    member do
      patch :accept
      put :accept
      delete :decline
    end

    get '/delete', to: 'friends#delete', on: :member
    member do 
        patch :accept
      put :accept
      delete :decline
    end
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'home#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :comments, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get '/posts', to: 'posts#index'

  get '/friendly', :controller => 'posts', :action => 'friends'

  resources :post do
    resources :likes
  end
  
  end
