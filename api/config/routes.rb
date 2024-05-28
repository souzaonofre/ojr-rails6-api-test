Rails.application.routes.draw do

  post 'auth/login'
  
  resources :recruiters
  
  namespace :recruiter do
    resources :jobs
    resources :submissions
  end
  
end
