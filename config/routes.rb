Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do 
    resources :friend_requests
    resources :friendships
    resources :posts, only:[:new, :create, :index]
  end

  resources :posts, only: [:show, :edit, :update, :destroy] do
    resources :likes
    resources :comments
  end
  # Defines the root path route ("/")
  # root "articles#index"
  root "posts#index"
end
