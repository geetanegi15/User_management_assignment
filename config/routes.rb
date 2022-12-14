Rails.application.routes.draw do 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"

  #devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions' ,
        passwords: 'users/passwords' ,
        registrations: 'users/registrations'
      }

      resources :profiles do
        resources :addresses
      end

      resources :educations

    get 'profiles/:id/profile_dashboard', to: "profiles#profile_dashboard" , as: 'profile_dashboard'
end
