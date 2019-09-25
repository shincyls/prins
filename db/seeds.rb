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
  {name: "Mewah Group - Future Glow 2019", host_company: "Mewah Group", organizer_company: "Prins Solution Sdn Bhd", evoting: true}
])

User.create!([
  {username: "prinsvip", first_name: "Prins", last_name: "VIP", email: "vip@prins.com", password: "prins1613", role: 0},
  {username: "prinsadmin", first_name: "Prins", last_name: "Admin", email: "admin@prins.com", password: "prins0000", role: 1}
])

Poll.create!([
  {event_id: 1, name: "Talent Show Voting", description: "Which one of the following is the best show?", minutes_session: 30},
])

PollCandidate.create!([
  {poll_id: 1, subject: "Talent Show 1", description: "Zulaika,
  {poll_id: 1, subject: "Talent Show 2", description: "Riena Del Baile,
  {poll_id: 1, subject: "Talent Show 3", description: "2HRA,
  {poll_id: 1, subject: "Talent Show 4", description: "Phoenix Busker,
  {poll_id: 1, subject: "Talent Show 5", description: "3887,
  {poll_id: 1, subject: "Talent Show 6", description: "Sweetie Belle
])

PollVoter.create!([
  pr11az,
  pr12br,
  pr47zk,
  pr30sr,
  pr48gf,
  pr47rt,
  pr62gu,
  pr24re,
  pr26es,
  pr83ah,
  pr88sf,
  pr09kj,
  pr34ap,
  pr25sf,
  pr16kr,
  pr27th,
  pr71iv,
  pr38ye,
  pr35kl,
  pr05pg,
  pr92jb,
  pr36cf,
  pr48cf
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








  
