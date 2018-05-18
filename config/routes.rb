Rails.application.routes.draw do
  
  devise_for :users

  root 'home#index'

  get 'home/about'

  get 'posts/index'

  get 'users/index'

  get 'users/show'



  resources :users, only: [:index, :edit, :update, :show] do
    resource :relationships, only: [:create, :destroy] do
      get :favorites, on: :member
      get :follows, on: :member
      get :followers, on: :member
    end
  end  
  resources :users do
    member do
     get :following, :followers
    end
  end
  
  resources :posts do
  	resource :favorites, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
