Rails.application.routes.draw do
  get 'items/complete'
  resources :items, only: [:show, :new, :create]
end
