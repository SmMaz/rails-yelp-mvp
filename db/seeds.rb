puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
epicure = { name: "Epicure", address: "75008 Paris", phone_number: "01 42 65 01 28", category: "french" }
bristol = { name: "Bristol", address: "123 London Rd", phone_number: "02 44 55 66 77", category: "belgian" }
sushi_zen = { name: "Sushi Zen", address: "Tokyo Central", phone_number: "03 11 22 33 44", category: "japanese" }
italo_disco = { name: "Italo Disco", address: "Rome St", phone_number: "04 99 88 77 66", category: "italian" }
wok_and_roll = { name: "Wok & Roll", address: "Beijing Plaza", phone_number: "05 00 11 22 33", category: "chinese" }

[ epicure, bristol, sushi_zen, italo_disco, wok_and_roll ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
