Rails.application.routes.draw do
  devise_for :users

  # Authenticated Routes
  authenticated :user do
    root to: 'authenticated#index'
    get '/' => 'home#index', as: :authenticated
    resources :reservations
    resources :pets

    namespace :employee do
      get '/' => 'home#index', as: :authenticated
      resources :reservations
      resources :pets
    end

    namespace :admin do
      get '/' => 'home#index', as: :authenticated
      resources :reservations
      resources :pets
    end
  end

  # Unauthenticated Routes
  root to: 'home#index', as: :unauthenticated
  get 'about', to: 'home#about', path: "/about"
  get 'contact', to: 'home#contact', path: "/contact"
  get 'help', to: 'home#help', path: "/help"
end
