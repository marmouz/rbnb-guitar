Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guitars do
    resources :bookings, only: [:index, :new, :create]
  end

  resources :bookings, only: [:show, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :profils, only: :show
end
