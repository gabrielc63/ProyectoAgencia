Rails.application.routes.draw do
  resources :agencias
  resources :subagencias
  resources :sessions, only: [:new, :create, :destroy]

  root 'static_pages#home'
  match '/registro', to: 'agencias#new', via: 'get'
  match '/home', to: 'agencias#home', via: 'get'
  match '/login', to: 'sessions#new', via: 'get'
  match '/logout', to: 'sessions#destroy', via: 'delete'

end
