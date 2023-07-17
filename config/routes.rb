Rails.application.routes.draw do
  #devise_for :users
  #root 'home#index'

#  post '/create_user', to: "users#create_user"

  get '/index', to: "product#index"
  get '/show', to: "product#show"
  post '/create', to: "product#create"
  put '/update', to: "product#update"
  delete '/destroy', to: "product#destroy"



  
end
