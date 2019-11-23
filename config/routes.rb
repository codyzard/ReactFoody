Rails.application.routes.draw do
  # devise_for :users
  # resources :sessions, only: [:create, :destroy]
  devise_for :users, controllers: { 
    :sessions => 'users/sessions',
    :registrations => 'users/registrations' 
  }
  put '/users/update', to: 'users#update'
  get '/users/:authentication_token', to: 'users#show'
  get '/users', to: 'users#index'
  delete '/users/:authentication_token', to: 'users#destroy'
  # resources :users
  resources :products;
  resources :categories;
  # resources :users;
  # resources :items;
  resources :items
  # do 
  #   member do
      
  #   end
  # end
  resources :reviews
  post '/items/onsession', to: "items#itemOnSession"
  # resources :session, only: [:create,:destroy]
    # post '/sign_in', to: 'sessions#create'
    # delete '/sign_out', to: 'session#destroy'
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
      # post "accept"
      # post "decline"
    end

  end
 resources :products do
    member do
    get "reviews"
    get "commentedUsers"
    end
 end
  # namespace :api do
  #   namespace :v1 do
  #     resources :products  
  #   end
  # end
end
