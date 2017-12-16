Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:show]

  # get 'users/new'

  # get 'users/show'

  # get 'users/edit'

  # get 'sessions/new'

  # post 'sessions' => 'sessions#create'

  root "sessions#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
