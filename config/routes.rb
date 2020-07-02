Rails.application.routes.draw do

  root "static#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/inventory", to: "instruments#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :music_stores, only: [:index, :new, :show]
  resources :purchases, only: [:index, :new, :show, :create]

  resources :customers, only: [:new, :show, :create] do
    resources :instruments, only: [:index, :show]
  end
end
