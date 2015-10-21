json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :start_datetime, :end_datetime, :commited
  json.url reservation_url(reservation, format: :json)
end
