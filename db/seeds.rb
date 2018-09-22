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
    {name: "White Gown Big", code: "FG0001", category_id: 1, color: "White", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/1/gown1.jpg")},
    {name: "White Gown Slim", code: "FG0002", category_id: 1, color: "White", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/2/gown2.jpg")},
    {name: "Prosperity Kua", code: "FK0001", category_id: 2, color: "Red", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/3/kua1.jpg")},
    {name: "Eternity Kua", code: "FK0002", category_id: 2, color: "Red", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/4/kua2.jpg")},
    {name: "Blue Dinner Dress", code: "FD0001", category_id: 3, color: "Blue", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/5/dress1.jpg")},
    {name: "Black Dinner Dress", code: "FD0002", category_id: 3, color: "Black", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/6/dress2.jpg")},
    {name: "White Lace Gown", code: "FS0001", category_id: 1, color: "White", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/7/gown3.jpg")},
    {name: "White Lace Mermaid Gown", code: "FS0002", category_id: 1, color: "White", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/8/gown4.jpg")},
    {name: "Happiness Kua", code: "FS0003", category_id: 2, color: "Red", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/9/kua3.jpg")},
    {name: "Forever Kua", code: "FS0004", category_id: 2, color: "Red", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/10/kua4.jpg")},
    {name: "Green Top Transparent Dinner Dress", code: "FS0005", category_id: 3, color: "Green", price: 188, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/11/dress3.jpg")},
    {name: "Purple Deep V Dinner Dress", code: "FS0006", category_id: 3, color: "Purple", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/12/dress4.jpg")},
    {name: "Blue Princess Dress", code: "FS0007", category_id: 3, color: "Blue", price: 288, cm_length: 100, cm_bust: 100, cm_waist: 100, cm_hip: 100, images: File.open(Rails.root + "public/uploads/dress/images/13/dress5.jpg")}
])
  
