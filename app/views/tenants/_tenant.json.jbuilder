json.extract! tenant, :id, :company, :name, :shop, :min_size, :max_size, :floor, :restaurant, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
