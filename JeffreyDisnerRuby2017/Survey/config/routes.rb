Rails.application.routes.draw do

get '/' => 'users#index'
get '/users' => 'users#display'
post '/users' => 'users#create'

end
