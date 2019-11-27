# Destroy everyting in database
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     "french",
    phone_number: "2233"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:      "belgian",
    phone_number:  "2233"
  },
  {
    name:         'Pizza West',
    address:      '57A Shoreditch High St, London E1 6PQ',
    category:     "japanese",
    phone_number: "2233"
  },
  {
    name:         'Mc Fly',
    address:      '5603A Shoreditch High St, London E1 6PQ',
    category:      "italian",
    phone_number:  "2233"
  },
  {
    name:         'Casa PP',
    address:      '56A Santako High St, London E1 6PQ',
    category:      "chinese",
    phone_number:  "2233"
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
