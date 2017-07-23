Rails.application.routes.draw do
  resources :portfolios
  resources :contactus
  resources :services
  resources :aboutus
  root 'welome#index'

    # root 'projects#index'
    resources :projects
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    


   devise_for :users, controllers: { registrations: "registrations"}

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
