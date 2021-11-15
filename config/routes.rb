Rails.application.routes.draw do
  #resources :portfolios
  resources :portfolios, except: [:show]

  get "angular-items", to: "portfolios#angular"
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"
  #get 'pages/home'
  #get 'pages/about'
  #get 'pages/contact'
  
  root to: "pages#home"

  get 'about', to:"pages#about"
  get 'contact', to:"pages#contact"

  resources :bloggs do
    member do
      get :toggle_status
    end
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
