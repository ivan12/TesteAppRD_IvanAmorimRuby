Rails.application.routes.draw do
   
  resources :campos_extras
  resources :form_primarios
  devise_for :usuarios
  
  get 'welcome/index'

  root 'welcome#index'
  
  resources :clientes

  resources :usuarios
  
end
