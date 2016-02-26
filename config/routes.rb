Rails.application.routes.draw do

  root "sessions#new"

  resources :users
  get "/dashboard", to: "static_pages#dashboard", as: "dashboard"
  get "/register", to: "users#new", as: "register"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"

  resources :pins do
    resources :high_scores
  end

end
