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
  {event_id: 1, evote_code: "pr48cf"},
  
  {event_id: 1, evote_code: "prv33i"},
  {event_id: 1, evote_code: "pr4yjp"},
  {event_id: 1, evote_code: "pr23ih"},
  {event_id: 1, evote_code: "prezvm"},
  {event_id: 1, evote_code: "praw5x"},
  {event_id: 1, evote_code: "prq060"},
  {event_id: 1, evote_code: "prb1hi"},
  {event_id: 1, evote_code: "pry6ko"},
  {event_id: 1, evote_code: "prsp63"},
  {event_id: 1, evote_code: "prcsw7"},
  {event_id: 1, evote_code: "prnfv7"},
  {event_id: 1, evote_code: "prnkfu"},
  {event_id: 1, evote_code: "pr9rbb"},
  {event_id: 1, evote_code: "pr2v0l"},
  {event_id: 1, evote_code: "prswvz"},
  {event_id: 1, evote_code: "prfnj3"},
  {event_id: 1, evote_code: "przvhl"},
  {event_id: 1, evote_code: "pr6jr7"},
  {event_id: 1, evote_code: "prpc5w"},
  {event_id: 1, evote_code: "prlggx"},
  {event_id: 1, evote_code: "prv75f"},
  {event_id: 1, evote_code: "prxps9"},
  {event_id: 1, evote_code: "prgh2p"},
  {event_id: 1, evote_code: "prhqai"},
  {event_id: 1, evote_code: "pryqrp"},
  {event_id: 1, evote_code: "pr5dib"},
  {event_id: 1, evote_code: "pr4peq"},
  {event_id: 1, evote_code: "pr9jby"},
  {event_id: 1, evote_code: "preok0"},
  {event_id: 1, evote_code: "prxo86"},
  {event_id: 1, evote_code: "prazp8"},
  {event_id: 1, evote_code: "pr494z"},
  {event_id: 1, evote_code: "pr6dj4"},
  {event_id: 1, evote_code: "przzmy"},
  {event_id: 1, evote_code: "pr5173"},
  {event_id: 1, evote_code: "pribdc"},
  {event_id: 1, evote_code: "prmxul"},
  {event_id: 1, evote_code: "prfqgf"},
  {event_id: 1, evote_code: "pr8t5h"},
  {event_id: 1, evote_code: "przb33"},
  {event_id: 1, evote_code: "prshh9"},
  {event_id: 1, evote_code: "pr8gfb"},
  {event_id: 1, evote_code: "pry6zb"},
  {event_id: 1, evote_code: "prtejr"},
  {event_id: 1, evote_code: "prk4xz"},
  {event_id: 1, evote_code: "prhk6d"},
  {event_id: 1, evote_code: "pr1pko"},
  {event_id: 1, evote_code: "pr2izj"},
  {event_id: 1, evote_code: "prws0y"},
  {event_id: 1, evote_code: "pryhgc"},
  {event_id: 1, evote_code: "prp52o"},
  {event_id: 1, evote_code: "pregtl"},
  {event_id: 1, evote_code: "prp13m"},
  {event_id: 1, evote_code: "pr42vp"},
  {event_id: 1, evote_code: "pr82o4"},
  {event_id: 1, evote_code: "pr1vih"},
  {event_id: 1, evote_code: "pr4iiv"},
  {event_id: 1, evote_code: "prbann"},
  {event_id: 1, evote_code: "prpeoq"},
  {event_id: 1, evote_code: "pr8r1b"},
  {event_id: 1, evote_code: "pr00aj"},
  {event_id: 1, evote_code: "prychd"},
  {event_id: 1, evote_code: "pr7k59"},
  {event_id: 1, evote_code: "prces7"},
  {event_id: 1, evote_code: "prtkvg"},
  {event_id: 1, evote_code: "prnl2t"},
  {event_id: 1, evote_code: "prne7y"},
  {event_id: 1, evote_code: "pr25xs"},
  {event_id: 1, evote_code: "prdfdz"},
  {event_id: 1, evote_code: "pr7lhh"},
  {event_id: 1, evote_code: "proh6y"},
  {event_id: 1, evote_code: "prp8g4"},
  {event_id: 1, evote_code: "prh7ec"},
  {event_id: 1, evote_code: "prf4sp"},
  {event_id: 1, evote_code: "prf6tn"},
  {event_id: 1, evote_code: "prg4yd"},
  {event_id: 1, evote_code: "prj6eo"},
  {event_id: 1, evote_code: "prws0q"},
  {event_id: 1, evote_code: "pr5m8c"},
  {event_id: 1, evote_code: "prll53"}

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








  
