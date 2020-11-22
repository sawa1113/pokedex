Rails.application.routes.draw do
  # if Rails.env.development?
  #   mount RailsDb::Engine => '/rails/db', :as => 'rails_db'
  # end

  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'
  get 'home/index'
  resources :kantos
  resources :galars
  resources :alolas
  resources :kalos
  resources :unovas
  resources :sinnohs
  resources :hoenns
  resources :johtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
