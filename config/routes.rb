Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'pages/home'

  resources :confirmations, only:[:index]

  resources :appartments do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]
  resources :conversations, only: [:create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
