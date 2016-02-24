Rails.application.routes.draw do

  devise_for :users
  resources :places do
      resources :reviews, except:[:show, :index]
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'places#index'

end
