Rails.application.routes.draw do
  root to: 'top#index'
  resources :rooms
  resources :entries, only: [:new, :create, :destroy, :index], path: :rentals do
    post :confirm, on: :collection
  end
end
