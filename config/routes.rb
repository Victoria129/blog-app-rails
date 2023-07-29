Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'likes/new'
  get 'likes/create'
  root "users#index"

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create]
  end

  resources :posts do
    resources :comments, only: [:new, :create]
    resources :likes, only: [:create]
  end
end

