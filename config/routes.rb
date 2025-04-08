Rails.application.routes.draw do
  namespace :users do
    get "accounts/edit"
    get "accounts/update"
  end
  devise_for :users, controllers: {
                       registrations: "users/registrations",
                     }
  namespace :users do
    resource :account, only: [:edit, :update]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "home#index"
  resources :users, only: [:show] do
    resources :user_devices, only: [:create], as: "add_devices"
  end
  resources :devices
end
