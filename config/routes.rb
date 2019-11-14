Rails.application.routes.draw do
  devise_for :users
  resources :products;
  resources :categories;
  resources :users;
  resources :items;
  resources :reviews
  post '/items/onsession', to: "items#itemOnSession"
  resources :carts do
    member do
      post "confirm"
      post "accept"
      post "decline"
    end
  end
 resources :products do
    member do
    get "reviews"
    end
 end
  # namespace :api do
  #   namespace :v1 do
  #     resources :products  
  #   end
  # end
end
