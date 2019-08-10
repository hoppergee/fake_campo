Rails.application.routes.draw do
  root to: 'home#index'

  namespace :auth do
    resources :emails, only: [:show, :create]
    get 'email/callback', to: 'email#callback'
  end
end
