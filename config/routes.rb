Rails.application.routes.draw do
  resources :schedules do
    resources :appointments
  end
  namespace :schedule do
    resources :appointments
  end
  resources :coaches do
  end
  namespace :coach do
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
