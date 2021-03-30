Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks

  root to: "tasks#index"
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # get '/task', to: 'tasks#show'

  # post '/tasks', to: 'tasks#create'

  # get '/tasks/edit', to: 'tasks#edit', as: 'edit_task'

  # patch '/tasks', to: 'tasks#update'
  # put '/tasks', to: 'tasks#update'

  # delete '/tasks', to: 'tasks#destroy', as: 'task_delete'
end
