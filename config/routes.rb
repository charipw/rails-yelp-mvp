Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # resources :reviews, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :restaurant_new_review
  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
end
