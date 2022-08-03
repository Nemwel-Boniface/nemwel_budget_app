Rails.application.routes.draw do
  resources :entities
  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end
  resources :groups
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "about#index"
end
