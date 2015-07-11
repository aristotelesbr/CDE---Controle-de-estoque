json.array!(@sales) do |sale|
  json.extract! sale, :id, :product_id, :quantity
  json.url sale_url(sale, format: :json)
end
