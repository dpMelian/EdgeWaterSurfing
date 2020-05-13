json.extract! producto, :id, :title, :body, :price, :category, :created_at, :updated_at
json.url producto_url(producto, format: :json)
