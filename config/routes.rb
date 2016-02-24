Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :places
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'places#index'

end
