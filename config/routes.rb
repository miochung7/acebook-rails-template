Rails.application.routes.draw do
<<<<<<< HEAD

=======
>>>>>>> 528ec09e8eeb066bb0683e2d1c49538395410ee8
  resources :friendships, :path => 'friends' do
    get '/status', to: 'friends#status', on: :member
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

  resources :posts
  resources :comments, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/posts', to: 'posts#index'
  
  end
