Rails.application.routes.draw do
  get 'auth/login'
  get 'recruiters/index'
  get 'recruiters/show'
  get 'recruiters/create'
  get 'recruiters/update'
  get 'recruiters/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
