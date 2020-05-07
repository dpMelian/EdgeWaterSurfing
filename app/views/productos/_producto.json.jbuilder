json.extract! producto, :id, :title, :body, :created_at, :updated_at
json.url producto_url(producto, format: :json)
