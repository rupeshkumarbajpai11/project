json.extract! booking, :id, :price, :start_date, :end_date, :satuts, :created_at, :updated_at
json.url booking_url(booking, format: :json)
