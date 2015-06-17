Rails.application.routes.draw do

  root to: 'welcome#index'

  get 'signup', to: 'users#new'

  post 'users', to: 'users#create'

  get 'users/:id', to: 'users#show', as: 'user'

  get 'login', to: 'sessions#new'

  post 'sessions', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'

  patch 'users/:id', to: 'users#update'

  get 'cities', to: 'cities#index', as: 'cities'

  get 'cities/:id', to: 'cities#show', as: 'city'

  get 'cities/:id/logs/new', to: "logs#new", as: "new_log"

  post 'cities/:id/logs', to: "logs#create", as: "new_log_form"

  get 'cities/:id/logs/:id', to: "logs#show", as: "log"

  get 'cities/:id/logs/:id/edit', to: 'logs#edit', as: "edit_log"
    
  patch 'cities/:id/logs/:id', to: "logs#update", as: 'update_log'



  delete 'cities/:id/logs/:id', to: "logs#delete", as: 'delete_log'
end
