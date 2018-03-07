Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show, :edit, :update] do
    resources :shelves, only: [:show, :edit, :update]
  end

  resources :books, only: [:show]
  root "books#index"
end
