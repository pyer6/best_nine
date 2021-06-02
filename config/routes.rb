Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/show'
  root 'best_nines#index'
  resources :best_nines,  only: [:new, :create, :destroy]
  resources :users
end