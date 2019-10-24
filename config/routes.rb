Rails.application.routes.draw do
  devise_for :users
  resources :products;
  resources :categories;
  resources :users;
  resources :items;
  resources :carts;
end
