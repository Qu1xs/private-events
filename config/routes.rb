Rails.application.routes.draw do
  resources :users, only: %i[new create show]

  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
end
