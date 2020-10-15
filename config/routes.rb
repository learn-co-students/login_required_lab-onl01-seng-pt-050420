Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :secrets
  resources :sessions

  get '/show', to: 'secrets#show'
  post '/destroy', to: 'sessions#destroy'
end
