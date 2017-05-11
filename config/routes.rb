Rails.application.routes.draw do
  resources :cohorts 
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pitches
  get '/' => "application#login"
end
