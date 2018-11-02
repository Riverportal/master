json.extract! booking, :id, :name, :age, :dob, :city, :gender, :state, :amount, :address, :description, :created_at, :updated_at
json.url booking_url(booking, format: :json)
