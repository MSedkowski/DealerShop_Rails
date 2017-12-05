json.extract! employee, :id, :name, :surname, :email, :phone_number, :password, :position, :salary, :days_of_paid_leave, :date_of_employment, :bonuses, :created_at, :updated_at
json.url employee_url(employee, format: :json)
