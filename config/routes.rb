Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :parties do
    resources :bookings
  end

  resources :users, except: [:delete]

end

