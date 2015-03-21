Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'

  resources :users do
    collection { get :me }
  end

  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :things do
    resources :comments
  end

  get 'things/seq/:seq', to: 'things#seq'

  get 'pages/home'

  root to: 'pages#home'
end
