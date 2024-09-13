Rails.application.routes.draw do
  get "pages/home"
  namespace :manager do
    get "dashboard/index"
  end
  namespace :admin do
    get "dashboard/index"
  end
  get "bookings/new"
  get "bookings/create"
  get "bookings/show"
  get "seats/index"
  get "seats/create"
  get "seats/update"
  get "flights/index"
  get "flights/show"
  get "flights/search"
  get "airlines/index"
  get "airlines/show"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
