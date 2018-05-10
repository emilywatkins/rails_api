Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :quotes
    end
  end

  resources :bites

  post 'authenticate', to: 'authentication#authenticate'
end
