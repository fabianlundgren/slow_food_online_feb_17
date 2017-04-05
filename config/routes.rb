Rails.application.routes.draw do

  devise_for :users
  root controller: :index, action: :index
  post '/', controller: :index, action: :select_category, as: :select_category

  resources :shopping_cart_items, only: [:create], as: :items


  resources :shopping_carts, only: [:show], as: :cart
  post '/complete', controller: :shopping_carts, action: :complete
  post '/charges', controller: :shopping_carts, action: :create

  resources :dish, only: [:show]

  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show]
  end
end
