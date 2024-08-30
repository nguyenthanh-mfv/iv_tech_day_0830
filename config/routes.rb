Rails.application.routes.draw do
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end

  resources :user_seats
  post "user_seat/create"
  post "user_seat/destroy"
  resources :user_seat
  resources :seats do
    member do
      get 'update_availability'
    end
  end
  resources :users
  resources :departments
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "app" => "pwa#index"

  # Defines the root path route ("/")
  root "seats#index"
end
