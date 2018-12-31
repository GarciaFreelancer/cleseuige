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
  get 'dashboard/index'
  get 'cursos_por_categorias/:id', to: 'home#category_courses', as: 'courses_category'
  get 'fazer_inscricao/:id', to: 'subscriptions#new', as: 'subscription_course'
  
  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
  end
 
  unauthenticated :user do
    root to: "home#index"
  end
end