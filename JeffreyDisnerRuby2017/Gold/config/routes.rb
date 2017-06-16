Rails.application.routes.draw do

get '/' => 'rpg#index'
get '/reset' => 'rpg#reset'
post '/farm' => 'rpg#farm'
post '/cave' => 'rpg#cave'
post '/house' => 'rpg#house'
post '/casino' => 'rpg#casino'

end
