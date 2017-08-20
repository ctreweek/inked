Rails.application.routes.draw do
  devise_for :artists
  devise_for :users
  root to: 'pages#home'

  resources :artists, only: [:index, :show]
end
