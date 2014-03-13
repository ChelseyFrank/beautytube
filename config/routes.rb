Beautytube::Application.routes.draw do

	root to: 'videos#index'

  get '/videos/:query', to: 'videos#show', as: 'video'
end
