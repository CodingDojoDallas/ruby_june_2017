Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/secrets' => 'secrets#index'
  post '/secrets' => 'secrets#create'
  delete '/secrets/:id' => 'secrets#destroy'

  post '/sessions' => 'sessions#create'
  delete '/sessions/:id' => 'sessions#destroy'

  post '/likes/:id' => 'likes#create'
  delete '/likes/:id' => 'likes#destroy'
end
