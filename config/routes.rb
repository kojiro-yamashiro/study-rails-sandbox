Rails.application.routes.draw do

  namespace :admin do
    get  'users',           to: 'users#index'
    get  'users/new',       to: 'users#new'
    post 'users',           to: 'users#create', as: :create_user
    get  'users/:id',       to: 'users#show', as: :user_detail
    delete 'users/:id',     to: 'users#destroy', as: :user_destroy
  end

  root to: 'tasks#index'
  resources :tasks

  # resources :dreams
  get '/dreams',          to: 'dreams#index'
  get '/dreams/new',      to: 'dreams#new',   as: 'new_dream'
  post '/dreams',         to: 'dreams#create'
  get '/dreams/:id',      to: 'dreams#show',  as: 'dream'
  get '/dreams/:id/edit', to: 'dreams#edit',  as: 'edit_dream'
  patch '/dreams/:id',    to: 'dreams#update'
  delete '/dreams/:id',   to: 'dreams#destory'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
