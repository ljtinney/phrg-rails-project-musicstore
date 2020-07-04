Rails.application.routes.draw do

  resources :payment_types
  root "static#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :sessions, only: [:new, :create, :destroy]
  resources :music_stores, only: [:index, :new, :show]
  resources :customers, only: [:new, :show, :create]
  resources :payment_type, only: [:index]

  resources :instruments, only: [:index, :show] do
    resources :purchases, only: [:new, :create, :show]
  end
end
