Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dojos#index'
  resource :dojos
  get '/dojos/:id' => 'dojos#show'
  get '/dojos/:id/students/new' => 'students#new'

  resource :students
  get '/students/:id' => 'students#show'
end
