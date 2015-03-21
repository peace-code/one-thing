Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'

  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users do
    collection { get :me }
  end

  resources :things do
    resources :comments
  end

  get 'things/seq/:seq', to: 'things#seq'

  get 'pages/home'

  root to: 'pages#home'
end
