Rails.application.routes.draw do
  devise_for :users, controllers: { registration: "registrations" }
  resources :contacts, only: [:new, :create]
  resources :categories
  resources :subscribers

  # Adding search functionality
  resources :listings do
    collection do 
      get 'search'
    end 
  end 

  resources :users


  root 'categories#index'


  match '/about',       to: 'pages#about',          via: :get
  match '/privacy',     to: 'pages#privacy',        via: :get
  match '/terms',       to: 'pages#terms',          via: :get
  match '/mylistings',  to: 'listings#mylistings',  via: :get
  # match '/contact', to: 'pages#contact', via: :get
end
