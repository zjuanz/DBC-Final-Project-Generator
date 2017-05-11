Rails.application.routes.draw do
  get 'students/index'

  resources :cohorts
  devise_for :students, :controllers => {:registration => 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'

  get '/' => "application#login"
end
