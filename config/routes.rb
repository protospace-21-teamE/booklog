Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show, :edit, :update] do
    resources :shelves, only: [:show, :edit, :update]
  end

  resources :books, only: [:index,:show] do
    resources :reviews, only: [:create, :show, :edit, :update, :destroy]
    collection do
      get "search"
    end
  end
  root "books#index"
end
