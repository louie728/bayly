json.array!(@carts) do |cart|
  json.extract! cart, :id, :customer_id, :status, :user_id, :descr, :comments
  json.url cart_url(cart, format: :json)
end
