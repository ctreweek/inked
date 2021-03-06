Rails.application.routes.draw do
  devise_for :artists
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  get '/pages/dashboard', to: 'pages#dashboard'
  resources :artists, only: [:index, :show, :edit, :update] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :tattoos, only: [:new, :create, :show] do
      resources :comments, only: [:new, :create]
    end
  end

  resources :conversations do
    resources :messages
 end
end
