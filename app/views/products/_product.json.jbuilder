json.extract! product, :id, :name, :store, :price, :non_taxed_price, :shipping_fee, :point, :payment, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
