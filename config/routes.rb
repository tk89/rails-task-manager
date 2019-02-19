Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read all tasks
  get 'tasks', to: 'tasks#index'


  # # Read the details of one task
  get 'tasks/new', to: 'tasks#new', as: "task_create"
  get 'tasks/:id', to: 'tasks#show', as: "task"

  # # create a task 2 REQUESTS
  post 'tasks', to: 'tasks#create'

  # # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: "task_edit"
  patch 'tasks/:id', to: 'tasks#update'

  # # delete a task
  delete 'tasks/:id', to: 'tasks#destroy', as: "task_delete"
end
