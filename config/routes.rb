Rails.application.routes.draw do
  # devise_for :users
  # resources :sessions, only: [:create, :destroy]
  devise_for :users, controllers: { 
    :sessions => 'users/sessions',
    :registrations => 'users/registrations' 
  }
  put '/users/update', to: 'users#update'
  get '/users/:authentication_token', to: 'users#show'
  # resources :users
  resources :products;
  resources :categories;
  # resources :users;
  resources :items;
  resources :reviews
  post '/items/onsession', to: "items#itemOnSession"
  # resources :session, only: [:create,:destroy]
    # post '/sign_in', to: 'sessions#create'
    # delete '/sign_out', to: 'session#destroy'
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
