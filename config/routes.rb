Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :bookings, only: %i[index destroy]
  resources :reviews, only: :destroy

end
