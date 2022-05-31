Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :users, only: [:show, :edit, :update, :destroy]
end
