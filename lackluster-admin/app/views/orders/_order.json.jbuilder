json.extract! order, :id, :employee_id, :customer_id, :store_number, :order_datetime, :created_at, :updated_at
json.url order_url(order, format: :json)
