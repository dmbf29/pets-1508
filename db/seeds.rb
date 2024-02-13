puts "Cleaning the DB..."
Pet.destroy_all

puts 'Creating pets...'
20.times do
  Pet.create!(
    name: Faker::FunnyName.name,
    location: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10)
  )
end
puts "... created #{Pet.count} pets."
