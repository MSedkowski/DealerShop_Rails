json.extract! rental_car, :id, :brand, :model, :additional_information, :created_at, :updated_at
json.url rental_car_url(rental_car, format: :json)
