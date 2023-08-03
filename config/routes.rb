# frozen_string_literal: true

# : true

Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'likes/new'
  get 'likes/create'
  root 'users#index'

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create]
  end

  resources :posts do
    resources :comments, only: %i[new create]
    resources :likes, only: [:create]
  end
end
