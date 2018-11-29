Rails.application.routes.draw do
  resources :subscriptions
  resources :classcourses
  resources :courses
  resources :formers
  resources :categories
  devise_for :users

  get 'home/index'
  get 'home/about'
  get 'home/contact'
  
  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
  end
 
  unauthenticated :user do
    root to: "home#index"
  end
end