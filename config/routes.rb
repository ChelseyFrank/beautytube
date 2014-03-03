Beautytube::Application.routes.draw do

  get '/home', to: 'videos#index'
  get '/videos/:query', to: 'videos#show', as: 'video'
end
