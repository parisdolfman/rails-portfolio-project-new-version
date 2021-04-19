Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :rentals
  resources :reviews

  root "rentals#index"

  get "/articles/:id", to: "articles#show"
end
