Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :quotes
    end
  end

  namespace :api do
    namespace :v2 do
      resources :bites
    end
  end


  post 'authenticate', to: 'authentication#authenticate'
end
