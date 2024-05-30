Rails.application.routes.draw do

  post 'auth/login', defaults: { format: 'json' }
  
  resources :recruiters, defaults: { format: 'json' }
  
  namespace :recruiter, defaults: { format: 'json' } do
    resources :jobs
    resources :submissions
  end

  namespace :publica, defaults: { format: 'json' } do
  end
  
end
