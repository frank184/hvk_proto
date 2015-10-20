##############################
#### HVK System Prototype ####
##############################

### REQUIRED ENTITIES ###
## Roles ##
admin_role = Role.create(slug:"SYSTEM_ADMINISTRATOR")
employee_role = Role.create(slug:"EMPLOYEE")
client_role = Role.create(slug:"CLIENT")
## Vaccinations ##
bordetella = Vaccination.create(name: "Bordetella bronchiseptica", revaccination: true, days_of_duration: 365)
distemper = Vaccination.create(name: "Distemper", revaccination: true, days_of_duration: 365 * 3)
hepatitis = Vaccination.create(name: "Hepatitis", revaccination: true, days_of_duration: 365 * 3)
parainfluenza = Vaccination.create(name: "Parainfluenza", revaccination: false)
parvovirus = Vaccination.create(name: "Parvovirus", revaccination: true, days_of_duration: 365 * 3)
rabies = Vaccination.create(name: "Rabies", revaccination: true, days_of_duration: 365)

### TEST ENTITIES ###
## Users ##
puts;puts puts "Users:"
# Client user@mail
print "creating user@mail: ".yellow
client = User.create(
  email: "user@mail.com",
  password: "password",
  first_name: "James",
  last_name: "Anderson",
  phone_number: "123 123 1234",
  confirmation_sent_at: Time.now,
  confirmed_at: Time.now
)
if client.save && client
  puts "successful! #{client.email} #{client.role.slug}".green
else
  puts "#{client.errors.full_messages.join(', ')}".red
end
client.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts
# Employee john@hvk.com
print "creating john@hvk.com: ".yellow
employee = User.create(
  role_id: Role::EMPLOYEE,
  email: "john@hvk.com",
  password: "password",
  first_name: "John",
  last_name: "Doe",
  phone_number: "111 111 1111",
  confirmation_sent_at: Time.now,
  confirmed_at: Time.now
)
if employee.save
  puts "successful! #{employee.email} #{employee.role.slug}".green
else
  puts "#{employee.errors.full_messages.join(', ')}".red
end
employee.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts
# Admin jim@admin.com
print "creating jim@admin.com: ".yellow
jim = User.create(
  role_id: Role::SYSTEM_ADMINISTRATOR,
  email: "jim@admin.com",
  password: "password",
  first_name: "Jim",
  last_name: "Reed",
  phone_number: "098 765 4321",
  confirmation_sent_at: Time.now,
  confirmed_at: Time.now
)
if jim.save
  puts "successful! #{jim.email} #{jim.role.slug}".green
else
  puts "#{jim.errors.full_messages.join(', ')}".red
end
jim.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts
# Admin sally@admin.com
print "creating sally@admin.com: ".yellow
sally = User.create(
  role_id: Role::SYSTEM_ADMINISTRATOR,
  email: "sally@admin.com",
  password: "password",
  first_name: "Sally",
  last_name: "Reed",
  phone_number: "123 456 7890",
  confirmation_sent_at: Time.now,
  confirmed_at: Time.now
)
if sally.save
  puts "successful! #{sally.email} #{sally.role.slug}".green
else
  puts "#{sally.errors.full_messages.join(', ')}".red
end
sally.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts



## Addresses ##
puts;puts puts "Addresses:"
# Emergency Clinic Address
print "creating emergency_clinic_address: ".yellow
emergency_clinic_address = Address.create(
  number: 105,
  street: "Chemin Old Chealsea",
  city: "Chelsea",
  state: "QC",
  zip: "J9B1K9",
  country: "Canada"
)
if emergency_clinic_address.save
  puts "successful!".green
else
  puts "#{emergency_clinic_address.errors.full_messages.join(', ')}".red
end
emergency_clinic_address.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts



## VeterinaryClinics ##
puts;puts puts "Clinics:"

# Emergency Clinic of Chelsea
print "creating emergency_clinic: ".yellow
emergency_clinic = VeterinaryClinic.create(
  name: "Fido Reed",
  address: emergency_clinic_address,
  phone_number: "(819) 827-1665"
)
if emergency_clinic.save
  puts "successful!".green
else
  puts "#{emergency_clinic.errors.full_messages.join(', ')}".red
end
emergency_clinic.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts



## Pets ##
puts;puts puts "Pets:"
# Jim and Sally's Fictional Dog
print "creating fido_reed: ".yellow
fido_reed = Dog.create(
  users: [jim, sally],
  name: "Fido Reed",
  gender: "M",
  birthday: Time.now - 2.years,
  sprayed_neutered: true,
  size: Dog::LARGE,
  emergency_contact: EmergencyContact.create(
    first_name: jim.first_name,
    last_name: jim.last_name,
    phone_number: jim.phone_number
  ),
  veterinary_clinic: emergency_clinic
)

fido_reed.pets_vaccinations.create(
    pet: fido_reed,
    vaccination: Vaccination.first,
    vaccination_datetime: DateTime.now
  )
if fido_reed.save
  puts "successful!".green
else
  puts "#{fido_reed.errors.full_messages.join(', ')}".red
end
fido_reed.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts
# Jim and Sally's Fictional Cat
print "creating mr_meow_reed: ".yellow
mr_meow_reed = Cat.create(
  users: [jim, sally],
  name: "Mr.Meow Reed",
  gender: "M",
  birthday: Time.now - 2.years,
  sprayed_neutered: true,
  emergency_contact: EmergencyContact.create(
    first_name: jim.first_name,
    last_name: jim.last_name,
    phone_number: jim.phone_number
  ),
  veterinary_clinic: emergency_clinic
)

mr_meow_reed.pets_vaccinations.create(
    pet: mr_meow_reed,
    vaccination: Vaccination.first,
    vaccination_datetime: DateTime.now
  )
if mr_meow_reed.save
  puts "successful!".green
else
  puts "#{fido_reed.errors.full_messages.join(', ')}".red
end
mr_meow_reed.attributes.each do |k,v|
  puts " -> " + k.to_s + ": " + v.to_s
end;puts
