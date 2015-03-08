Rails.application.routes.draw do
  get 'users/show'

  get 'users/me'

  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :things 

  get 'things/seq/:seq', to: 'things#seq'

  get 'pages/home'

  root to: 'pages#home'
end
