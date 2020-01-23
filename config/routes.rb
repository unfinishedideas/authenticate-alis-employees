Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  root to: 'home#index'
  resources :divisions do
    resources :employees
  end
  resources :projects do
    resources :assignments
  end
end
