Rails.application.routes.draw do
  devise_for :users, controllers: { 
    :sessions => 'users/sessions',
    :registrations => 'users/registrations' 
  }
  put '/users/update', to: 'users#update'
  get '/users/:authentication_token', to: 'users#show'
  get '/users', to: 'users#index'
  delete '/users/:authentication_token', to: 'users#destroy'
  resources :products;
  resources :categories;
  resources :items
  resources :reviews
  post '/items/onsession', to: "items#itemOnSession"
  get '/carts' , to: "carts#show"
  post '/carts/confirm',to: "carts#confirm"
  post '/carts/decline',to: "carts#decline"
  resources :carts do
    post "sendcart"
    member do
      post "update"
      post "delete"
      post "addProduct"
      get "getCart"
      get "historyCartDang"
    end

  end
 resources :products do
    member do
    get "reviews"
    get "commentedUsers"
    end
 end
 get 'products/search/:key', to: "products#search"
 get 'products/best/rate', to: "products#bestRate"
end
