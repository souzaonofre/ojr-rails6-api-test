Rails.application.routes.draw do

  post 'auth/login'
  
  resources :recruiters
  
  namespace :recruiter do
    resource :jobs
  end
  
end
