Rails.application.routes.draw do
  get 'auth/login'
  
  get 'recruiters/index'
  get 'recruiters/show'

  post 'recruiters/create'
  put 'recruiters/update'
  delete 'recruiters/destroy'
  
end
