Rails.application.routes.draw do
  resources :subagencias do
    resources :impresos
  end

  resources :agencias
  # resources :subagencias
  resources :subagencias do
    resources :juegos_impreso
  end
  resources :sessions, only: [:new, :create, :destroy]

  root 'static_pages#home'
  match '/registro', to: 'agencias#new', via: 'get'
  match '/home', to: 'agencias#home', via: 'get'
  match '/login', to: 'sessions#new', via: 'get'
  match '/logout', to: 'sessions#destroy', via: 'delete'
  match '/listado', to: 'subagencias#index', via: 'get'

end
