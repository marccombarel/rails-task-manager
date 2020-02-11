Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # CRUD

  # # Create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read (All // One specific task)
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show'

  # Update (Get the page of the element we want to update // We update)
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'restaurant#destroy'
end
