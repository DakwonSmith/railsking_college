Rails.application.routes.draw do

  get 's_posts/feed'
  root 'welcome#index'
  
  get 'welcome/about'
  get 'welcome/applications'
  get 'welcome/tuition'

  get 'student/log_in'

  get 'student/sign_up'
  post 'student/sign_up'

  get 'student/index'
  post 'student/index'

  get 'student/grades'
  get 'student/courses'
  get 'student/profile'
end
