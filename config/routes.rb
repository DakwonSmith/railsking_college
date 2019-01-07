Rails.application.routes.draw do

  root 'welcome#index'
  get 'welcome/about'
  get 'welcome/application'
  get 'welcome/tuition'
  
end
