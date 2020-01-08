# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## Destroy

puts "Destroy all flats"
Flat.destroy_all

flat_data = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3,
    city: "London"
  },
  {
    name: 'Great View Liverpool',
    address: '20 Grosnenor Gardens Liverpool W7 12V',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 105,
    number_of_guests: 2,
    city: "Liverpool"
  },
  {
    name: 'Perfect View Lancaster',
    address: '30 Grosnenor Gardens Lancaster W7 12V',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 105,
    number_of_guests: 2,
    city: "Lancaster"
  }
]

flat_data.each do |flat|
  flat_created = Flat.create!(flat)
  puts "#{flat_created.name} is created"
end
