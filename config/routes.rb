Rails.application.routes.draw do
  resources :movies
  resources :users
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
