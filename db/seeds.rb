# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





User.create!([
    {username: "admin", first_name: "Hello", last_name: "World", email: "admin@smartbin.com", password: "qwerasdf", role: 0},
    {username: "welene", first_name: "Welene", last_name: "Lim", email: "company@smartbin.com", password: "qwerasdf", role: 0},
    {username: "user1", first_name: "Hello", last_name: "World", email: "user1@smartbin.com", password: "qwerasdf", role: 1},
    {username: "user2", first_name: "Hello", last_name: "World", email: "user2@smartbin.com", password: "qwerasdf", role: 1},
    {username: "user3", first_name: "Hello", last_name: "World", email: "user3@smartbin.com", password: "qwerasdf", role: 1}
  ])

Category.create!([
    {name: "Gown", description: "None"},
    {name: "Kua", description: "None"},
    {name: "Dress", description: "None"}
])

Dress.create!([
    {name: "White Gown Big", code: "FS0001", category_id: 1, color: "White", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100},
    {name: "White Gown Slim", code: "FS0002", category_id: 1, color: "White", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100},
    {name: "Prosperity Kua", code: "FS0003", category_id: 2, color: "Red", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100},
    {name: "Eternity Kua", code: "FS0004", category_id: 2, color: "Red", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100},
    {name: "Blue Night Dress", code: "FS0005", category_id: 3, color: "Blue", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100},
    {name: "Black Night Dress", code: "FS0006", category_id: 3, color: "Black", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100}
])
  
