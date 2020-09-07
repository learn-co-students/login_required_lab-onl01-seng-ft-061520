Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  root 'application#hello'
  post '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'
  get 'secrets/new'
end
