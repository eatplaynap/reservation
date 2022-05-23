Rails.application.routes.draw do
  root to: 'top#index'
  resources :rooms
  resources :entries, only: [:new, :create, :destroy, :index], path: :rentals
end
