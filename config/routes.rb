Rails.application.routes.draw do
  devise_for :users
  root to: "site#index"

  resources :artists, only: [:new, :create, :destroy, :index]
  resources :fans, only: [:new, :create, :destroy]
end
