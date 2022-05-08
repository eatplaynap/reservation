Rails.application.routes.draw do
  get 'top/index'
  resources :rooms
end
