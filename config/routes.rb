Rails.application.routes.draw do
  get '/homepage', to:'homepage#show'
  get '/create_gossip', to:'create_gossip#show'
  get '/contact', to: 'contact#show'
  get '/team', to: 'team#show'
end
