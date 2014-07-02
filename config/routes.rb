Rails.application.routes.draw do
  resources :agencias

  root 'static_pages#home'
  match '/registro', to: 'agencias#new', via: 'get'

end
