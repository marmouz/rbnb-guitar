Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guitar do
    resources :booking, only: [:index, :new, :create]
  end

  resources :booking, only: [:show, :destroy] do
    resources :review, only: [:index, :new, :create]
  end
  resources :profil, only: :show

end
