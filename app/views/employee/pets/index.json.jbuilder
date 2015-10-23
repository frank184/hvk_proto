json.array!(@employee_pets) do |employee_pet|
  json.extract! employee_pet, :id
  json.url employee_pet_url(employee_pet, format: :json)
end
