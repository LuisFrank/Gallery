json.extract! admin_service, :id, :name, :description, :order, :show, :active, :created_at, :updated_at
json.url admin_service_url(admin_service, format: :json)
