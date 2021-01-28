Rails.application.routes.draw do
  devise_for :users
  get 'house_works/index'
root to: "house_works#index"
end
