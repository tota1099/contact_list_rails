Rails.application.routes.draw do
  # cria automaticamente os padrões REST, show, index, etc
  resources :contacts
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "static_pages#index"

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'

end
