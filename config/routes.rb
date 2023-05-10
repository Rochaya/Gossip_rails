Rails.application.routes.draw do
  #get '/name', to: 'homepage#hello'
  get '/homepage', to:'homepage#homepage'
  get '/create_gossip', to:'create_gossip#create'
  get '/contact', to: 'contact#contact'
  get '/team', to: 'team#team'
  get 'potin/:id', to:'potin#potin', as: 'potin'
end
