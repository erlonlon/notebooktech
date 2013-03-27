Notebooktech::Application.routes.draw do

  resources :users

  root :to => 'home#index'
  resources :services

  
    namespace :admin do
    
      root :to => 'homes#index'
    end

  
end
