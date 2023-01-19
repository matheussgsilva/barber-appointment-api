Rails.application.routes.draw do
  
  scope defaults: { format: :json } do
    
    resources :sessions, only: [:create]
    resources :users, only: [:create]
    resources :services
    resources :barbers
    resources :schedules
  end
end
