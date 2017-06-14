Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  post '/users' => 'users#create'
  get '/success' => 'users#success'

  post '/sessions' => 'sessions#create'
  delete '/sessions/:id' => 'sessions#destroy'
end
