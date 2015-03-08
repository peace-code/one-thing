Rails.application.routes.draw do
  get 'users/show'

  get 'users/me'

  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks" }
  
  get 'pages/home'

  root to: 'pages#home'
end
