Rails.application.routes.draw do
  resources :clases
  root :to => "home#index"
  get 'home/index'
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
