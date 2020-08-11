Rails.application.routes.draw do
  devise_for :users

  root to: 'quotes#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :quotes, only: [ :index, :show ]
    end
  end
end
