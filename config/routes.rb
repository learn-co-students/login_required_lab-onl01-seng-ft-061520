Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'sessions#home'
  get '/secrets', to: 'secrets#show'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/show', to: 'sessions#show'
  delete '/signout', to: 'sessions#destroy'
end
