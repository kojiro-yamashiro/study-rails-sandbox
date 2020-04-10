Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  resources :dreams
  # get '/dreams', to: 'dreams#index'
  # get '/dreams/new', to: 'dreams#new'
  # post '/dreams', to: 'dreams#create'
  # get '/dreams/:id', to: 'dreams#show', as: 'show_dreams'
  # get '/dreams/:id/edit', to: 'dreams#edit', as: 'edit_dreams'
  # put '/dreams/:id', to: 'dreams#update', as: 'update_dreams'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
