Rails.application.routes.draw do
  get '/auth', to: 'session#auth'

  resources :session, only: [:new, :create]
  root 'static#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  get '/register', to: 'users#register'
end
