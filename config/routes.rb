Rails.application.routes.draw do

  root 'home_screen#index'
  get 'home_screen/index'
  get 'sessions/new'
  get 'meals/new'

  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'






  resources :meals   # can later be called ImpactActions

  resources :users


end
