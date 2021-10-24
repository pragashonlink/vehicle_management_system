Rails.application.routes.draw do
  resources :vehicle_imports
  resources :vehicles

  root 'vehicles#index'
end
