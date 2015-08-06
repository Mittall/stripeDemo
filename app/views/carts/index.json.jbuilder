json.array!(@carts) do |cart|
  json.extract! cart, :id, :product_id, :qty, :payment_type
  json.url cart_url(cart, format: :json)
end
