Rails.application.routes.draw do
  devise_for :users
  root to: "house_works#index"
  resources :house_works
  resources :users, only: :show
  get "house_works/:id/edit" => "house_works#edit"
  post "house_works/:id/update" => "house_works#update"
  post "house_works/:id/destroy" => "house_works#destroy"
end
