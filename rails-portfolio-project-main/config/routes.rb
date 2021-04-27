Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, as: 'devise', controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :rentals
  resources :reviews

  root "rentals#index"
  
  get "/rentals", to: "rentals#index"
  get "/rentals/:id", to: "rentals#show"

  resources :rentals do
    resources :reviews
  end

  resources :reviews do 
    resources :users
  end 
end
