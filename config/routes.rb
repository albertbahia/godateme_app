Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, :matches
  resources :interests, only: [:index]
  resources :deals, only:[:show]
  get '/deals' => 'deals#deals_search' 
end
