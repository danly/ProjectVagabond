Rails.application.routes.draw do

  root to: 'welcome#index'

  get 'signup', to: 'users#new'

  post 'users', to: 'users#create'

  get 'users/:id', to: 'users#show', as: 'user'

  get 'users/:id/logs', to: 'users#show', as: 'user_log'
  
  get 'login', to: 'sessions#new'

  post 'sessions', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'

  patch 'users/:id', to: 'users#update'

  get 'cities', to: 'cities#index', as: 'cities'

  get 'cities/:id', to: 'cities#show', as: 'city'

  get 'logs/new', to: "logs#new", as: "new_log"

  post 'logs', to: "logs#create", as: "new_log_form"

  get 'logs/:log_id', to: "logs#show", as: "city_log"

  get 'logs/:log_id/edit', to: 'logs#edit', as: "edit_log"
    
  patch 'logs/:log_id', to: "logs#update", as: 'update_log'

  delete 'logs/:log_id', to: "logs#delete", as: 'delete_log'
end
