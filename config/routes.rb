Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # verb '/path', to: controller#action, as: :nickname

  # # see all the restaurants
  # get '/restaurants', to: "restaurants#index", as: :restaurants

  # # 2. Receive the form submission
  # post '/restaurants', to: 'restaurants#create'

  # # Create a new restaurant
  # # 1. Display the form
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant


  # # See one restaurant
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # 2. Receive the form submission
  # patch '/restaurants/:id', to: 'restaurants#update'

  # delete '/restaurants/:id', to: 'restaurants#destroy'

  # # UPDATE A RESTAURANT
  # # 1. Display the form
  # get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  resources :restaurants #, only: :index
end
