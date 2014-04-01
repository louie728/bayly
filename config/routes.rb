Bayly::Application.routes.draw do
  resources :order_lines

  resources :orders

  resources :cart_lines

  resources :carts

  resources :customers

  devise_for :users

  # composer issue
  # http://themayesfamily.com/blogs/b/2014/01/rails4-and-undefined-local-variable-or-method-root_path/
  root :to => "controller#action"
end
