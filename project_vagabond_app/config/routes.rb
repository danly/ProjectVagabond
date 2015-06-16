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

  get 'logs/city/new', to: "logs#new", as: "new_log"

  post 'logs/city', to: "logs#create"

  get 'logs/city/:id', to: "logs#show", as: "log"

end
