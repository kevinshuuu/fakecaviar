# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prefixes = %w(Osteria Calypso Odyssey Markham Bothel Martellio Tressem Alinea Grace Master Katten)
prepositions = %w(on via by of)
suffixes = %w(State Randolph Michigan Gresham Portland Clark Madison Roosevelt 47th Kenwood)

12.times do
  r = Restaurant.create(
    name: "#{prefixes.sample} #{prepositions.sample} #{suffixes.sample}",
    image_path: "#{rand(5)+1}.jpg",
    description: "This is a description for the restaurant."
  )

  5.times do |i|
    MenuItem.create(
      name: "Menu item #{i}",
      description: "This is a description for the menu item.",
      price: (700 + rand(400))/100.0,
      image_path: "#{rand(5)+1}.jpg",
      restaurant_id: r.id
    )
  end
end
