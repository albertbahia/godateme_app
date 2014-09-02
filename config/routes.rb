Rails.application.routes.draw do
  root to: 'application#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:index, :show]
  resources :matches
  resources :interests, only: [:index]
  resources :deals, only:[:index, :show] 
end
