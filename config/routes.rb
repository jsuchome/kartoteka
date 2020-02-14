Rails.application.routes.draw do
#  get 'sessions/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :users

  root 'items#index'

  resources :items
  #get 'items/print'
  #get "items/print/:id", action: :print
  get "items/print/:id", controller: "items", action: :print

  resources :fathers
end
