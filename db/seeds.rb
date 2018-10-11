# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
    {username: "admin1", first_name: "Hello", last_name: "Hello", email: "admin1@smartbin.com", password: "qwerasdf", role: 0},
    {username: "admin2", first_name: "Hello", last_name: "Hello", email: "admin2@smartbin.com", password: "qwerasdf", role: 0},
    {username: "admin3", first_name: "Hello", last_name: "World", email: "admin3@smartbin.com", password: "qwerasdf", role: 0},
    {username: "admin4", first_name: "Hello", last_name: "World", email: "admin4@smartbin.com", password: "qwerasdf", role: 0},
    {username: "admin5", first_name: "Hello", last_name: "World", email: "admin5@smartbin.com", password: "qwerasdf", role: 0}
])


Register.create!([
    {first_name: "Alvin", last_name: "Wood", email: "account1@testing.com"},
    {first_name: "Bernand", last_name: "South", email: "account2@testing.com"},
    {first_name: "Cathryn", last_name: "Bridge", email: "account3@testing.com"},
    {first_name: "Dan", last_name: "Bazillian", email: "account4@testing.com"},
    {first_name: "Edward", last_name: "Rossane", email: "account5@testing.com"},
    {first_name: "Frankurt", last_name: "Kind", email: "account6@testing.com"},
    {first_name: "George", last_name: "Norman", email: "account7@testing.com"},
    {first_name: "Halle", last_name: "Berry", email: "account8@testing.com"},
    {first_name: "Isabelle", last_name: "Atkinson", email: "account9@testing.com"},
    {first_name: "Jayson", last_name: "Maroon", email: "account10@testing.com"},
    {first_name: "Kathy", last_name: "Sampson", email: "account11@testing.com"},
    {first_name: "Lechman", last_name: "Park", email: "account12@testing.com"},
    {first_name: "Merry", last_name: "Joseph", email: "account13@testing.com"},
    {first_name: "Norman", last_name: "Robinson", email: "account14@testing.com"},
    {first_name: "Oscar", last_name: "Haryy", email: "account15@testing.com"},
    {first_name: "Potter", last_name: "World", email: "account16@testing.com"},
    {first_name: "Queensy", last_name: "World", email: "account17@testing.com"},
    {first_name: "Richman", last_name: "World", email: "account18@testing.com"},
    {first_name: "Steven", last_name: "Brady", email: "account19@testing.com"},
    {first_name: "Tamers", last_name: "Hardy", email: "account20@testing.com"},
    {first_name: "Uruski", last_name: "Pedolsa", email: "account21@testing.com"},
    {first_name: "Viera", last_name: "Delarosa", email: "account22@testing.com"}
  ])
  
