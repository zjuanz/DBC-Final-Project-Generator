Rails.application.routes.draw do
  
  devise_for :views
  devise_for :students
resources :cohorts 

end
