json.array!(@admin_products) do |admin_product|
  json.extract! admin_product, :id, :title, :description, :price, :available
  json.url admin_product_url(admin_product, format: :json)
end
