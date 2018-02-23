Rails.application.routes.draw do
  
  get "/connect", to: 'home#connect'
  get "/oauth/callback", to: 'home#callback'
  get "/logout", to: 'home#logout'
  get "/user_media_feed", to: 'home#media_feed'

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
