Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # changes default homepage to restaurants index
  root "restaurants#index"

  #Read All
  get "restaurants", to: "restaurants#index"

  #Create
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"

  #Read One
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get "restaurants/:id/edit", to: "restaurants#edit"

  #Update
  patch "restaurants/:id", to: "restaurants#update"

  #Delete
  delete "restaurants/:id", to: "restaurants#destroy"
end
