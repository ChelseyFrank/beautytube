Beautytube::Application.routes.draw do

  match '/', to: 'videos#index', via: 'get'
  match '/videos/:query', to: 'videos#show', via: 'get'
end
