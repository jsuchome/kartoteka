Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  # get 'items/print'

  #get "items/print/:id", action: :print
  get "items/print/:id", controller: "items", action: :print
end
