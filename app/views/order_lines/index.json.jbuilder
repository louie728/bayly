json.array!(@order_lines) do |order_line|
  json.extract! order_line, :id, :order_id, :status, :item_id, :note, :price_in_cents, :qty
  json.url order_line_url(order_line, format: :json)
end
