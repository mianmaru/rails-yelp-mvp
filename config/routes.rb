Rails.application.routes.draw do
  # for restaurants
  resources :restaurants, only: [:index, :show, :new, :create] do
  # for reviews
    resources :reviews, only: [:new, :create]
  end
end
