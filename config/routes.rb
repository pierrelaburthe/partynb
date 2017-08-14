Rails.application.routes.draw do
  root to: 'pages#home'

  resources :parties do
    resources :bookings
  end

  resources :users, except: [:delete]

end
