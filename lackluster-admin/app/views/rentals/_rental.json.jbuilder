json.extract! rental, :id, :name, :rental_type, :category, :year, :director, :num_available, :created_at, :updated_at
json.url rental_url(rental, format: :json)
