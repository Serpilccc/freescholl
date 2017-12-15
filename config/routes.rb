Rails.application.routes.draw do
  get 'searches/index'

  get 'searches/show'

  get 'searches/edit'

  resources :courses
  resources :comments
  resources :commenters
  resources :authors
  resources :searches


 devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'home#index'

  resources :home

  resources :users

  resources :images


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

