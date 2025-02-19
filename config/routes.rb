Rails.application.routes.draw do
  root "books#index"
  
  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  get "profile", to: "users#profile"
  
  resources :books, only: [:index, :show]
  
  resources :borrowings, only: [:create] do
    member do
      put :return
    end
  end

  namespace :admin do
    get "/", to: "dashboard#index", as: "dashboard"
    resources :books, except: [:show] do
      member do
        patch :toggle_visibility
      end
      collection do
        get :search
      end
    end

    put "toggle_user/:id", to: "users#toggle_admin", as: "toggle_user"
  end
end