Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :tasks
  # Afficher tous les tasks
  get 'tasks', to: 'tasks#index'
  # Créer un tasks
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # Afficher un task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Updater un task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Destroy un task
  delete 'tasks/:id', to: 'tasks#destroy'
end
