Rails.application.routes.draw do
  resources :courses
  resources :comments
  resources :commenters
  resources :authors


 devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'home#index'

  resources :home

  resources :users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

