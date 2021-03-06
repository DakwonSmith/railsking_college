Rails.application.routes.draw do

  
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#index", as: "sign_up"
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'user#index', as: :signed_in_root
  end
  
  constraints Clearance::Constraints::SignedOut.new do
    root 'welcome#index'
  end

  
  
  get 'welcome/about'
  get 'welcome/applications'
  get 'welcome/tuition'

  
  resources :users,
    controller: 'users'
    

  resources :posts
  

  
end
