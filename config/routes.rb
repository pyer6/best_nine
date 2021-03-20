Rails.application.routes.draw do
  root 'best_nines#index'
  resources :best_nines,  only: [:new, :create, :destroy]
end