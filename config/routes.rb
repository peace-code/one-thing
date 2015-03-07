Rails.application.routes.draw do
  get 'users/show'

  get 'users/me'

  devise_for :users
  get 'pages/home'

  root to: 'pages#home'
end
