Rails.application.routes.draw do
  resources :departments
  resources :employees
  resources :subjects
  get 'home/index'
  root "home#index"
end
