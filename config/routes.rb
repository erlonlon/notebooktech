Notebooktech::Application.routes.draw do
 

 root :to => 'home#index'
  resources :services
  resources :contacts
  resources :abouts
  resources :posts


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

    end

  
end
