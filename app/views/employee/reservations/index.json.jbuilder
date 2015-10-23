json.array!(@employee_reservations) do |employee_reservation|
  json.extract! employee_reservation, :id
  json.url employee_reservation_url(employee_reservation, format: :json)
end
