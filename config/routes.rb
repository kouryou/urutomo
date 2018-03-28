Rails.application.routes.draw do
  root 'static_pages#home'
  resources :items, only: [:show, :new, :create]
end
