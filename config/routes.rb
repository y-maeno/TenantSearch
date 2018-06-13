Rails.application.routes.draw do
  root to: 'realestates#index'
  get 'search', to: 'realestates#search'
  post 'search', to: 'realestates#search'

  resources :tenants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
