Rails.application.routes.draw do
  devise_scope :user do
    get "/sessions/current" => "ember_devise_simple_auth/sessions#show"
  end

  
end
