### HVK System Prototype ###


### Necessary Entities ###

## Roles
puts;puts puts "Roles:"

# Admin Role
print "creating admin_role: ".yellow
admin_role = Role.create(slug:"SYSTEM_ADMINISTRATOR")
if admin_role.save && admin_role.id == Role::SYSTEM_ADMINISTRATOR
  puts "successful!".green
else
  puts "#{admin_role.errors.full_messages.join(', ')}".red
end

# Employee Role
print "creating employee_role: ".yellow
employee_role = Role.create(slug:"EMPLOYEE")
if employee_role.save && employee_role.id == Role::EMPLOYEE
  puts "successful!".green
else
  puts "#{employee_role.errors.full_messages.join(', ')}".red
end

# Client Role
print "creating client_role: ".yellow
client_role = Role.create(slug:"CLIENT")
if client_role.save && client_role.id == Role::CLIENT
  puts "successful!".green
else
  puts "#{client_role.errors.full_messages.join(', ')}".red
end

### Base Entities ###

## Users
puts;puts puts "Users:"

# Client user@mail
print "creating user@mail: ".yellow
client = User.create(email: "user@mail.com", password: "password", first_name: "James", last_name: "Anderson", confirmation_sent_at: Time.now, confirmed_at: Time.now)
if client.save && client
  puts "successful! #{client.email} #{client.role.slug}".green
else
  puts "#{client.errors.full_messages.join(', ')}".red
end

# Admin jim@admin.com
print "creating jim@admin.com: ".yellow
jim = User.create(role_id: Role::SYSTEM_ADMINISTRATOR, email: "jim@admin.com", password: "password", first_name: "Jim", last_name: "Reed", confirmation_sent_at: Time.now, confirmed_at: Time.now)
if jim.save
  puts "successful! #{jim.email} #{jim.role.slug}".green
else
  puts "#{jim.errors.full_messages.join(', ')}".red
end

# Admin sally@admin.com
print "creating sally@admin.com: ".yellow
sally = User.create(role_id: Role::SYSTEM_ADMINISTRATOR, email: "sally@admin.com", password: "password", first_name: "Sally", last_name: "Reed", confirmation_sent_at: Time.now, confirmed_at: Time.now)
if sally.save
  puts "successful! #{sally.email} #{sally.role.slug}".green
else
  puts "#{sally.errors.full_messages.join(', ')}".red
end
