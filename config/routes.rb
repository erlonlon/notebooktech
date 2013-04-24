Notebooktech::Application.routes.draw do

 

  root :to => 'home#index'
  resources :services
  resources :contacts
  resources :abouts
  resources :posts
  resources :locations
  resources :tables


    #rotas do devise
	scope '/admin' do
        devise_for :users,
                   :controllers => {
             	                     :sessions => "admin/sessions",
             	                     :passwords => "admin/passwords"
        }
    end
  

  #rotas admin
    namespace :admin do
    
      root :to => 'homes#index'
      resources :users
      resources :contacts
      resources :posts
      resources :categories      
      resources :galleries
      resources :types

    end

  
end
