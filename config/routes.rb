Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create, :destroy]
  resources :customers, only: [:index, :new, :show, :create]
  # resources :instruments, only: [:index, :new, :show, :create]
  resources :music_stores, only: [:index, :new, :show, :create]
  # resources :purchases, only: [:index, :new, :show, :create]

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "signup", to: "sessions#create"
end
