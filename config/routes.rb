Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  # resources :dreams
  get '/dreams', to: 'dreams#index'
  get '/dreams/new', to: 'dreams#new', as: 'new_dream'
  post '/dreams', to: 'dreams#create'
  get '/dreams/:id', to: 'dreams#show', as: 'dream'
  get '/dreams/:id/edit', to: 'dreams#edit', as: 'edit_dream'
  patch '/dreams/:id', to: 'dreams#update'
  delete '/dreams/:id', to: 'dreams#destory'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
