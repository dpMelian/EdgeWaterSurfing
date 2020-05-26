Rails.application.routes.draw do

  get 'about/index'

  resources :clases_asignadas

=begin   get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
=end

  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'terminos/index'
  resources :terminos
  resources :productos
  resources :clases
  root :to => "home#index"
  get 'home/index'
  resources :usuarios
  resources :tienda
  resources :contacto
  resources :about
  resources :tutoriales
  resources :tutorial
  resources :sessions, only: [:new, :create, :destroy]
  get '/buscarusuariorol' => 'pages#buscarusuariorol', :as => 'buscarusuariorol_page'
  get '/buscarusuario' => 'pages#buscarusuario', :as => 'buscarusuario_page'
  get '/buscarproducto' => 'pages#buscarproducto', :as => 'buscarproducto_page'
  get '/buscarclase' => 'pages#buscarclase', :as => 'buscarclase_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
