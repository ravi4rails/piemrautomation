Rails.application.routes.draw do
  resources :sections
  resources :courses
  resources :departments do
    member do
      get :department_employees
      get :department_courses
    end
  end
  resources :employees
  resources :subjects
  get 'home/index'
  root "home#index"
end
