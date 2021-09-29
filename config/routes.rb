Rails.application.routes.draw do
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/user_profile", to: "users#show"
  resources :movielists
  resources :reviews
  resources :movies
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
