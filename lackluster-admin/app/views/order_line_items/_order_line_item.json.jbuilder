json.extract! order_line_item, :id, :order_id, :rental_id, :due_datetime, :created_at, :updated_at
json.url order_line_item_url(order_line_item, format: :json)
