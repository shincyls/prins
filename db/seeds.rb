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

PageContent.create!([
  {name: "running_number", value: 1}
])

Event.create!([
  {name: "Mewah Group - Future Glow", host_company: "Prins Solution Sdn Bhd"}
])

User.create!([
  {username: "prinsvip", first_name: "Prins", last_name: "VIP", email: "vip@prins.com", password: "prinsadmin", role: 0},
  {username: "prins1613", first_name: "Prins", last_name: "Admin", email: "admin@prins.com", password: "prins0000", role: 1}
])


# CSV Loading File

options = {:col_sep => ',',
  chunk_size: 100,
  convert_values_to_numeric: false,
  remove_empty_hashes: false
}
  
SmarterCSV.process('app/assets/files/mewah3.csv', options) do |chunk|
  chunk.each do |data_hash|
    Register.create!(data_hash)
  end
end





  
