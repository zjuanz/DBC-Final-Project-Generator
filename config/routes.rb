Rails.application.routes.draw do


  devise_for :students
resources :cohorts

end
