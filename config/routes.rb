Rails.application.routes.draw do
  resources :agencias
  resources :subagencias

  root 'static_pages#home'
  match '/registro', to: 'agencias#new', via: 'get'

end
