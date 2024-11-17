Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
   }
  root to: "home#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get 'signup', to: 'users#new'

  resources :doctors do
    member do
      get 'edit_personal'
      get 'edit_education'
      get 'edit_work_history'
      get 'edit_office'
      get 'edit_liability'
      get 'edit_disclosure'
      patch 'save_doctor'
      get 'show_save'
    end
  end
end
