Rails.application.routes.draw do

  root "static#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create, :destroy]
  resources :customers, only: [:new, :show, :create]
  # resources :instruments, only: [:index, :new, :show, :create]
  resources :music_stores, only: [:index, :new]
  # resources :purchases, only: [:index, :new, :show, :create]

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

end
