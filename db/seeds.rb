puts "Seeding..."
Role.destroy_all
Audition.destroy_all

7.times do
    Role.create(character_name: Faker::Movies::HarryPotter.character)
    #Customer.create(name: Faker::Name.name)
end

20.times do
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.city,
        phone: Faker::PhoneNumber.phone_number,
        hired: [true, false].sample,
        role: Role.pluck
        #role: Role.all.sample
    )
end


puts "Seeding Completed!"
