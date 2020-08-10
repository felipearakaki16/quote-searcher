Rails.application.routes.draw do
  devise_for :users

  root to: 'quotes#home'

  namespace :api do
    namespace :v1 do
      resources :quotes, only: [ :index ]
    end
  end
end
