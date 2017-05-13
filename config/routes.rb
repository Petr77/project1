Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "countries#index"

  get "/regions/:region_id/varitieties/:variety_id/wines", to: "wines#region_variety_index", as: "wine_region_varieties"

  resources :countries
  resources :regions#, only: [:show, :new, :create, :destroy]
  resources :varieties
  resources :wines#, only: [:show, :new, :create, :destroy]


  get "/signup", to: "users#new", as: "signup"
  resources :users, only: [:create]


  get "/signin", to: "sessions#new", as: "signin"
  post "/signin", to: "sessions#create"
  get "/signout", to: "sessions#destroy", as: "signout"

  get "/bootstrap", to: "bootstrap_demo#index"
end
