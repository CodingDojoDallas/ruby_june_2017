Rails.application.routes.draw do
  get '/' => 'users#index'
  get '/greeting' => 'users#greeting'
  get '/say/hello' => 'users#say'
  get '/say/hello/joe' => 'users#joe'
  get '/say/hello/michael' => 'users#michael'
  get '/times' => 'users#times'
  get '/times/restart' => 'users#restart'

  get '/users' => 'users#display'
  get '/users/new' => 'users#new'
  get 'users/1' => 'users#first'
  get '/users/1/edit' => 'users#edit'
  post '/users' => 'users#create'
  get '/users/total' => 'users#total'
end
