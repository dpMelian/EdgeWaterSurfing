Rails.application.routes.draw do
  get 'terminos/index'
  resources :terminos
  resources :productos
  resources :clases
  root :to => "home#index"
  get 'home/index'
  resources :usuarios
  resources :tienda
  resources :contacto
  resources :tutorial
  get '/buscarusuario' => 'pages#buscarusuario', :as => 'buscarusuario_page'
  get '/buscarproducto' => 'pages#buscarproducto', :as => 'buscarproducto_page'
  get '/buscarclase' => 'pages#buscarclase', :as => 'buscarclase_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
