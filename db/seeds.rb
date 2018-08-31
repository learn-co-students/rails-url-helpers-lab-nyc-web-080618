# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all

puts "Makin Students"
Student.create([
  { first_name: "Guy", last_name: "Fieri" },
  { first_name: "Bojack", last_name: "Horseman" },
  { first_name: "Stevie", last_name: "Nicks" }
  ])
puts "Done. Made #{Student.count} Students"
