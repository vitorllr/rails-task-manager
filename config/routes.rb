Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'
  # Defines the root path route ("/")
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # root "articles#index"
  post 'tasks', to: 'tasks#create'
  #post 'tasks/new', to: 'task'

  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get 'task/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'task/:id', to: 'tasks#update'

end
