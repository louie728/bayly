json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :status, :user_id, :descr, :comments
  json.url order_url(order, format: :json)
end
