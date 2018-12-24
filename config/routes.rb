Rails.application.routes.draw do
  # resources :battles
  # resources :sieges
  # resources :fealties
  # resources :cities
  # resources :players
  # resources :khans

get '/superawesomefuntime/', to: 'khans#splash', as: 'splash'
 
get '/khans/', to: 'khans#index', as: 'khan_index'
get '/khans/:id', to: 'khans#show', as: 'khan'


get '/players/', to: 'players#index', as: 'player_index'
get '/players/:id', to: 'players#show', as: 'player'


end
