Rails.application.routes.draw do
  devise_for :users
  root to: "house_works#index"
  resources :house_works
  resources :users, only: :show
end
