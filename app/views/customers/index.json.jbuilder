json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :cusnumber, :address, :address1, :city, :state, :zip, :phone, :fax, :email, :repid
  json.url customer_url(customer, format: :json)
end
