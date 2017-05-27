Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'courses#index'
 
  resources :groups do
  	resources :students
  end
  resources :teachers, :courses, :users, :groups, :students
end
