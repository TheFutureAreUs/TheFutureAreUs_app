Rails.application.routes.draw do

  devise_for :users
  resources :contacts, only: [:new, :create]
  resources :categories
  resources :charges, only: [:new, :create]
  resources :subscriptions, only: [:new, :create]
  resources :listings

  resources :colleges do
    resources :speccolleges
  end

  get 'thanks', to: 'charges#thanks', as: 'thanks'
  get "/search" => "listings#search"
  

  # Adding search functionality
  # resources :listings do
    # collection do 
      # get 'search'
    # end 
  # end 

  resources :users


  root 'categories#index'


  match '/about',       to: 'pages#about',          via: :get
  match '/privacy',     to: 'pages#privacy',        via: :get
  match '/terms',       to: 'pages#terms',          via: :get
  match '/mylistings',  to: 'listings#mylistings',  via: :get
  match '/speccolleges/find_by_college', to: 'speccolleges#find_by_college', via: :post
  # match '/contact', to: 'pages#contact', via: :get
end
