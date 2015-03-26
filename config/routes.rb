Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'

  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users do
    collection { get :me }
  end

  resources :things do
    resources :comments
    post 'new_deed', on: :member
  end

  get 'things/seq/:seq', to: 'things#seq'

  get 'pages/home'
  get 'pages/banner'

  root to: 'pages#home'
end
