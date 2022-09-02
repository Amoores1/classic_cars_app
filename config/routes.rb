Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'cars/index'
  # get 'cars/show'
  # get 'cars/new'
  # get 'cars/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :cars, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :update]
  get "your_cars", to: "cars#yourcars"
  # Defines the root path route ("/")
  # root "articles#index"
end
