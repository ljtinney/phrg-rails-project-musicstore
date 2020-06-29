Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :customers, only: [:index, :new, :show, :create]
  resources :instrument, only: [:index, :new, :show, :create]
  resources :music_store, only: [:index, :new, :show, :create]
  resources :purchase, only: [:index, :new, :show, :create]

end
