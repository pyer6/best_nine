Rails.application.routes.draw do
  root 'best_nines#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :best_nines,  only: [:new, :create, :show, :destroy]
end