Rails.application.routes.draw do

  resources :cohorts 
  devise_for :admins
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => "application#login"

  get '/admins/students/new', to: 'students#new', as: 'new_student'
  post 'admins/students', to: 'students#create', as: 'students'

  root to: 'admin#index' # for my branch only - ben

end
