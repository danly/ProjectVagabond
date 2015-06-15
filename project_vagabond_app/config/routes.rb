Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'signup', to: 'user#new'
end
