Rails.application.routes.draw do
  resources :sections
  resources :courses do
    member do
      post :add_new_batch
      get :new_batch_form
    end
  end
  resources :batches
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
