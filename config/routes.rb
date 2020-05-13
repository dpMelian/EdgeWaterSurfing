Rails.application.routes.draw do
  resources :productos
  resources :clases
  root :to => "home#index"
  get 'home/index'
  resources :usuarios
  resources :tienda
  resources :contacto
  resources :tutorial
  get '/search' => 'pages#search', :as => 'search_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
