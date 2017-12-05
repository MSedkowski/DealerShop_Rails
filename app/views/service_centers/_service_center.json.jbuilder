json.extract! service_center, :id, :brand, :model, :license_plate, :status, :client_id, :mechanic, :beginning_date, :end_date, :cost, :created_at, :updated_at
json.url service_center_url(service_center, format: :json)
