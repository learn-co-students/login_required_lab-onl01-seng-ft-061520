Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secrets/show'

  root 'application#hello'
  get '/login' => 'sessions#index'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
