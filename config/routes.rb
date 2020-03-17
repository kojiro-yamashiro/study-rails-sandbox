Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  get '/dreams', to: 'dreams#index'
  get '/dreams/new', to: 'dreams#new'
  post '/dreams', to: 'dreams#create'
  get '/dream/:id', to: 'dreams#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
