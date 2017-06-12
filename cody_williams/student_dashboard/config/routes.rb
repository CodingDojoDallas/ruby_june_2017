Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dojos#index'
  
  resource :dojos
  get '/dojos/:id' => 'dojos#show'
  put '/dojos/:id' => 'dojos#update'
  get '/dojos/:id/edit' => 'dojos#edit'
  get '/dojos/:id/students/new' => 'students#new'

  resource :students
  get '/students/:id' => 'students#show'
  delete '/students/:id' => 'students#destroy'
end
