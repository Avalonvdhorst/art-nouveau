Rails.application.routes.draw do
  devise_for :users
  root to: 'arts#home'
  resources :arts do
    resources :bookings, only: [:new, :create]
  end
  get '/profile', to: 'profile#show'
  get 'accept/:id', to: 'bookings#accept', as: :accept
  get 'decline/:id', to: 'bookings#decline', as: :decline
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
