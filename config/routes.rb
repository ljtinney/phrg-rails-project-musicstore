Rails.application.routes.draw do
  root "static#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :sessions, only: [:new, :create, :destroy]
  resources :music_stores, only: [:index, :show]
  resources :customers, only: [:new, :show, :create]

  resources :instruments, only: [:index, :show] do
    resources :purchases, only: [:new, :create]
  end
end
