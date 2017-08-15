Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :parties do
    resources :bookings
  end

  resources :users, except: [:delete]

end


