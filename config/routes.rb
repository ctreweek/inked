Rails.application.routes.draw do
  devise_for :artists
  devise_for :users
  root to: 'pages#home'
  get '/pages/dashboard', to: 'pages#dashboard'


  resources :artists, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
