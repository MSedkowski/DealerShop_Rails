json.extract! service_fault, :id, :service_id, :fault_id, :created_at, :updated_at
json.url service_fault_url(service_fault, format: :json)
