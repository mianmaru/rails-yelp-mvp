Rails.application.routes.draw do
  # for restaurants
  resources :restaurants, only: [:index, :show, :new, :create] do
  # for reviews
    resources :reviews, only: [:create]
  end
end
