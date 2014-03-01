Beautytube::Application.routes.draw do


  match '/', to: 'videos#index', via: 'get'
  match '/videos', to: 'videos#show', via: 'get'
end
