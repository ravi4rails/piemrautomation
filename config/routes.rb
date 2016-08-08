Rails.application.routes.draw do
  resources :subjects
  get 'home/index'
  root "home#index"
end
