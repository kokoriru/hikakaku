json.extract! product, :id, :lowest, :name, :quantity, :weight, :unit, :price, :non_taxed_price, :shipping_fee, :point, :sum, :store, :url, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
