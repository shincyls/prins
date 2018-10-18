# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
    {username: "admin1", first_name: "Hello", last_name: "Hello", email: "admin1@prins.com", password: "qwerasdf", role: 0},
    {username: "admin2", first_name: "Hello", last_name: "Hello", email: "admin2@prins.com", password: "qwerasdf", role: 0},
    {username: "admin3", first_name: "Hello", last_name: "World", email: "admin3@prins.com", password: "qwerasdf", role: 0},
    {username: "admin4", first_name: "Hello", last_name: "World", email: "admin4@prins.com", password: "qwerasdf", role: 0},
    {username: "admin5", first_name: "Hello", last_name: "World", email: "admin5@prins.com", password: "qwerasdf", role: 0}
])


Register.create!([
    {first_name: "Alvin", last_name: "Wood", phone_number: "1234567", drawing_chance: 1, email: "account1@testing.com"},
    {first_name: "Bernand", last_name: "South", phone_number: "1234567", drawing_chance: 3, email: "account2@testing.com"},
    {first_name: "Cathryn", last_name: "Bridge", phone_number: "1234567", drawing_chance: 5, email: "account3@testing.com"},
    {first_name: "Dan", last_name: "Bazillian", phone_number: "1234567", drawing_chance: 3, email: "account4@testing.com"},
    {first_name: "Edward", last_name: "Rossane", phone_number: "1234567", drawing_chance: 5, email: "account5@testing.com"},
    {first_name: "Frankurt", last_name: "Kind", phone_number: "1234567", drawing_chance: 3, email: "account6@testing.com"},
    {first_name: "George", last_name: "Norman", phone_number: "1234567", drawing_chance: 5, email: "account7@testing.com"},
    {first_name: "Halle", last_name: "Berry", phone_number: "1234567", drawing_chance: 1, email: "account8@testing.com"},
    {first_name: "Isabelle", last_name: "Atkinson", phone_number: "1234567", drawing_chance: 3, email: "account9@testing.com"},
    {first_name: "Jayson", last_name: "Maroon", phone_number: "1234567", drawing_chance: 5, email: "account10@testing.com"},
    {first_name: "Kathy", last_name: "Sampson", phone_number: "1234567", drawing_chance: 1, email: "account11@testing.com"},
    {first_name: "Lechman", last_name: "Park", phone_number: "1234567", drawing_chance: 3, email: "account12@testing.com"},
    {first_name: "Merry", last_name: "Joseph", phone_number: "1234567", drawing_chance: 5, email: "account13@testing.com"},
    {first_name: "Norman", last_name: "Robinson", phone_number: "1234567", drawing_chance: 1, email: "account14@testing.com"},
    {first_name: "Oscar", last_name: "Haryy", phone_number: "1234567", drawing_chance: 3, email: "account15@testing.com"},
    {first_name: "Potter", last_name: "World", phone_number: "1234567", drawing_chance: 5, email: "account16@testing.com"},
    {first_name: "Queensy", last_name: "Johnson", phone_number: "1234567", drawing_chance: 1, email: "account17@testing.com"},
    {first_name: "Richman", last_name: "Warren", phone_number: "1234567", drawing_chance: 3, email: "account18@testing.com"},
    {first_name: "Steven", last_name: "Brady", phone_number: "1234567", drawing_chance: 5, email: "account19@testing.com"},
    {first_name: "Tamers", last_name: "Hardy", phone_number: "1234567", drawing_chance: 1, email: "account20@testing.com"},
    {first_name: "Uruski", last_name: "Pedolsa", phone_number: "1234567", drawing_chance: 3, email: "account21@testing.com"},
    {first_name: "Viera", last_name: "Delarosa", phone_number: "1234567", drawing_chance: 5, email: "account22@testing.com"}
  ])


  Register.all.each do |r|
    r.convert_ticket_number
    r.save
  end
  
