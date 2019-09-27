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
  {poll_id: 1, subject: "Talent Show 1", description: "Zulaika"},
  {poll_id: 1, subject: "Talent Show 2", description: "Riena Del Baile"},
  {poll_id: 1, subject: "Talent Show 3", description: "2HRA"},
  {poll_id: 1, subject: "Talent Show 4", description: "Phoenix Busker"},
  {poll_id: 1, subject: "Talent Show 5", description: "3887"},
  {poll_id: 1, subject: "Talent Show 6", description: "Sweetie Belle"}
])

PollVoter.create!([
  {event_id: 1, evote_code: "pr11az"},
  {event_id: 1, evote_code: "pr12br"},
  {event_id: 1, evote_code: "pr47zk"},
  {event_id: 1, evote_code: "pr30sr"},
  {event_id: 1, evote_code: "pr48gf"},
  {event_id: 1, evote_code: "pr47rt"},
  {event_id: 1, evote_code: "pr62gu"},
  {event_id: 1, evote_code: "pr24re"},
  {event_id: 1, evote_code: "pr26es"},
  {event_id: 1, evote_code: "pr83ah"},
  {event_id: 1, evote_code: "pr88sf"},
  {event_id: 1, evote_code: "pr09kj"},
  {event_id: 1, evote_code: "pr34ap"},
  {event_id: 1, evote_code: "pr25sf"},
  {event_id: 1, evote_code: "pr16kr"},
  {event_id: 1, evote_code: "pr27th"},
  {event_id: 1, evote_code: "pr71iv"},
  {event_id: 1, evote_code: "pr38ye"},
  {event_id: 1, evote_code: "pr35kl"},
  {event_id: 1, evote_code: "pr05pg"},
  {event_id: 1, evote_code: "pr92jb"},
  {event_id: 1, evote_code: "pr36cf"},
  {event_id: 1, evote_code: "pr48c"}
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








  
