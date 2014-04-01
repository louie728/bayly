Bayly::Application.routes.draw do
  resources :order_lines

  resources :orders

  resources :cart_lines

  resources :carts

  resources :customers

  devise_for :users
end
