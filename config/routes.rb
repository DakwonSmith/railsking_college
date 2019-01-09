Rails.application.routes.draw do

  
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'student#index', as: :signed_in_root
  end
  
  constraints Clearance::Constraints::SignedOut.new do
    root 'welcome#index'
  end

  
  
  get 'welcome/about'
  get 'welcome/applications'
  get 'welcome/tuition'

  get 'welcome/log_in'
  post 'welcome/log_in'
  get 'welcome/sign_up'
  post 'welcome/sign_up'


  get 'student/index'
  post 'student/index'
  resources :posts
  

  get 'student/grades'
  get 'student/courses'
  get 'student/profile'
  
end
