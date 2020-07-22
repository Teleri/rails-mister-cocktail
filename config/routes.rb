Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails
  resources :ingredients, only: [:index, :new, :create, :destroy]
  resources :doses
end
