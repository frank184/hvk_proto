Rails.application.routes.draw do

  devise_for :users

  # Authenticated Root
  authenticated :user do
    root to: 'authenticated#index'
    resources :pets
    get 'pets' => 'pets#index', as: :authenticated

    namespace :employee do
      root to: 'authenticated#index'
      resources :pets
      get 'pets' => 'pets#index', as: :authenticated
    end

    namespace :admin do
      root to: 'authenticated#index'

      resources :pets
      get 'pets', as: :authenticated
    end

  end


  # Unauthenticated Root
  root to: 'home#index', as: :unauthenticated
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'help', to: 'home#help'

end
