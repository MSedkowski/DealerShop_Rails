json.extract! cars_to_sell, :id, :brand, :model, :price, :additional_information, :created_at, :updated_at
json.url cars_to_sell_url(cars_to_sell, format: :json)
