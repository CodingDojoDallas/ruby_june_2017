Rails.application.routes.draw do

get '/' => 'dojos#index'
get '/dojos/new' => 'dojos#new'
post '/dojos' => 'dojos#create'
#get 'dojos/:id' => 'dojos#display'
get '/dojos/:id/edit' => 'dojos#edit'
patch '/dojos/:id/update' => 'dojos#update'
delete '/dojos/:id' => 'dojos#destroy'

get '/dojos/:dojo_id/students' => 'students#index'
get '/dojos/:dojo_id/students/new' => 'students#new'
post '/dojos/:dojo_id/students' => 'students#create'
get '/dojos/:dojo_id/students/:id' => 'students#display'
get '/dojos/:dojo_id/students/:id/edit' => 'students#edit'
patch '/dojos/:dojo_id/students/:id' => 'students#update'
delete '/dojos/:dojo_id/students/:id' => 'students#destroy'
end
