Rails.application.routes.draw do
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  # get 'posts/index'
  end
  # resources :users, only: [:show]
end
