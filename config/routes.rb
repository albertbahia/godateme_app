Rails.application.routes.draw do
  root to: 'application#index'
  get '/main', to: 'application#main'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:index, :show]
  resources :matches
  resources :interests, only: [:index]
  resources :deals, only:[:index, :show]
end
