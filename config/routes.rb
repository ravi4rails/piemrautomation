Rails.application.routes.draw do

  resources :courses do
    member do
      post :add_new_batch
      get :new_batch_form
    end
  end
  resources :batches do
    resources :sections, only: [:new, :create]
  end
  resources :sections, only: [:edit, :update, :destroy]
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
