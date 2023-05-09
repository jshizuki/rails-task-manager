Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # List form & submit
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create', as: :tasks

  # List all tasks

  get '/tasks', to: 'tasks#index'
  # Show one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update a form
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete a form
  delete '/tasks/:id', to: 'tasks#destroy'
end
