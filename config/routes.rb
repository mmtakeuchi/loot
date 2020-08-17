Rails.application.routes.draw do
  resources :stocks
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
