json.extract! item, :id, :price, :name, :stock, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
