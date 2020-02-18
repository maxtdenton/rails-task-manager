Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmld
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: "tasks_show"

  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: "tasks_destroy"
end
