Rails.application.routes.draw do
  #get '/name', to: 'homepage#hello'
  root to: redirect('/gossips')
  resources :gossips
  get '/contact', to: 'contact#contact'
  get '/team', to: 'team#team'
end
