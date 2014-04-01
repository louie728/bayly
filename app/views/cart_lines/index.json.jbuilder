json.array!(@cart_lines) do |cart_line|
  json.extract! cart_line, :id, :cart_id, :status, :item_id, :note, :price_in_cents, :qty
  json.url cart_line_url(cart_line, format: :json)
end
