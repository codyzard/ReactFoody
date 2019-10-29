Rails.application.routes.draw do
  devise_for :users
  resources :products;
  resources :categories;
  resources :users;
  resources :items;
  resources :reviews
  resources :carts do
    member do
      post "confirm"
      post "accept"
      post "decline"
    end
  end
end
