Rails.application.routes.draw do
  resources :courses
  resources :departments do
    member do
      get :department_employees
    end
  end
  resources :employees
  resources :subjects
  get 'home/index'
  root "home#index"
end
