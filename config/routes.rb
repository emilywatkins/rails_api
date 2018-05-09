Rails.application.routes.draw do
  resources :quotes
  resources :bites

  post 'authenticate', to: 'authentication#authenticate'
end
