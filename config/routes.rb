Rails.application.routes.draw do
 

get '/superawesomefuntime/', to: 'khans#splash', as: 'splash'
 
get '/khans/', to: 'khans#index', as: 'khan_index'
get '/khans/:id', to: 'khans#show', as: 'khan'

get '/cities/', to: 'cities#index', as: 'city_index'
get '/cities/:id', to: 'cities#show', as: 'city'

get '/players/', to: 'players#index', as: 'player_index'
get '/player/new', to: 'players#new', as: 'new_player'
post 'players', to: 'players#create'
get '/players/:id', to: 'players#show', as: 'player'
delete '/players/:id', to: 'players#destroy'

post '/players/action/', to: 'players#show_action'
get 'players/action/:id', to: 'players#show_action', as: 'player_action'
get '/join/:id' => 'players#join_khan'
patch 'players/:id/', to: 'players#update'
# post '/players', to: 'players#create' 

get 'siege/:id', to: 'sieges#new', as: 'sieges'
post 'siege/:id', to: 'sieges#create' 
get 'siege/display/:id', to: 'sieges#display'
get 'siege/resolve/:id', to: 'sieges#resolve', as: 'resolve_siege'

get 'battle/:id', to: 'battles#new', as: 'battles'
post 'battle/:id', to: 'battles#create' 
get 'battle/display/:id', to: 'battles#display'
get 'battle/resolve/:id', to: 'battles#resolve', as: 'resolve'


end
