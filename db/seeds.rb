puts "Deleting data"
Role.destroy_all
Audition.destroy_all

puts "Creating Roles"
10.times do
    Role.create(character_name: Faker::Name.name)
end

puts "Creating Auditions"
20.times do
    Audition.create( actor: Faker::Name.name, location: Faker::Address.full_address, phone: Faker::Number.number(digits: 9), hired: false, role: Role.all.sample)
end
