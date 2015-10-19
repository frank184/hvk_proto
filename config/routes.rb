Rails.application.routes.draw do

  devise_for :users

  # Unauthenticated Root
  root to: 'home#index', as: :unauthenticated_root
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'help', to: 'home#help'

  # Authenticated Root
  authenticated :user do
    root to: 'reservations#index', as: :authenticated_user
    get 'profile', to: 'profile#index'

    namespace :employee do
      root to: 'home#index', as: :authenticated_employee
    end

    namespace :admin do
      root to: 'home#index', as: :authenticated_admin
    end

  end

end
