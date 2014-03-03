Beautytube::Application.routes.draw do

  resources :videos, only: [:index, :show]

  get '/home', to: 'videos#index'
  get '/videos/:query', to: 'videos#show'
end
