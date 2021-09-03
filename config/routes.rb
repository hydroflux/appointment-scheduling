Rails.application.routes.draw do
  devise_for :users
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "coaches#index"
end
