json.extract! hotel, :id, :name, :description, :address, :country_id, :price, :contact_number, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
