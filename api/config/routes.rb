Rails.application.routes.draw do

  get 'auth/login'
  
  resources :recruiters
  
  namespace :recruiter do
    resource :jobs
  end
  
end
