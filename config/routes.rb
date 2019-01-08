Rails.application.routes.draw do

  
  root 'welcome#index'
  
  get 'welcome/about'
  get 'welcome/applications'
  get 'welcome/tuition'

  get 'welcome/log_in'
  post 'welcome/log_in'
  get 'welcome/sign_up'
  post 'welcome/sign_up'


  get 'student/index'
  post 'student/index'
  resources :s_posts
  

  get 'student/grades'
  get 'student/courses'
  get 'student/profile'
  
end
