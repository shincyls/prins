# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'smarter_csv'
require 'csv'
require 'open-uri'



options = {:col_sep => ';',
  :row_sep => "\r",
  :chunk_size => 100,
  :convert_values_to_numeric => false,
  :remove_empty_hashes => false}
  
SmarterCSV.process('app/assets/files/ogawa_event.csv', options) do |chunk|
  chunk.each do |data_hash|
    Register.create!(data_hash)
  end
end

Register.all.each do |r|
 r.convert_draw_chance
 r.category = 1
 r.save
end

PageContent.create!([
  {name: "running_number", value: 1}
])


 User.create!([
  {username: "super1", first_name: "Super", last_name: "Admin1", email: "super1@prins.com", password: "@dmin!23", role: 0},
  {username: "super2", first_name: "Super", last_name: "Admin2", email: "super2@prins.com", password: "@dmin!23", role: 0},
  {username: "admin1", first_name: "Normal", last_name: "Admin1", email: "admin1@prins.com", password: "qwerasdf", role: 1},
  {username: "admin2", first_name: "Normal", last_name: "Admin2", email: "admin2@prins.com", password: "qwerasdf", role: 1},
  {username: "admin3", first_name: "Normal", last_name: "Admin3", email: "admin3@prins.com", password: "qwerasdf", role: 1},
  {username: "admin4", first_name: "Normal", last_name: "Admin4", email: "admin4@prins.com", password: "qwerasdf", role: 1},
  {username: "admin5", first_name: "Normal", last_name: "Admin5", email: "admin5@prins.com", password: "qwerasdf", role: 1}
])





  
