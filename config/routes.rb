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

  get '/search', to: 'veg_guides#index'



  resources :microposts,          only: [:index, :create, :destroy]

  resources :meals   # can later be called ImpactActions

  resources :users


end
