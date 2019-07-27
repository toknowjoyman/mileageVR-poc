Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get 'home_screen/index'

  get 'meals/new'

  resources :meals   # can also be called ImpactActions

  root 'home_screen#index'
end
