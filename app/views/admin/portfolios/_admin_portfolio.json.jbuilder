json.extract! admin_portfolio, :id, :name, :description, :order, :show, :active, :created_at, :updated_at
json.url admin_portfolio_url(admin_portfolio, format: :json)
