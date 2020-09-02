Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get 'show', to: 'secrets#show'
  get 'destroy', to: 'sessions#destroy'
end
