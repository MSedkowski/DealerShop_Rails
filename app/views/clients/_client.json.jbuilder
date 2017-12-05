json.extract! client, :id, :name, :surname, :email, :phone_number, :password, :employee, :use_renting, :use_service, :buy_car, :created_at, :updated_at
json.url client_url(client, format: :json)
