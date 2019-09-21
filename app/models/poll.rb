class Poll < ApplicationRecord

    belongs_to :event
    has_many :poll_candidates
    has_many :poll_banks
    has_many :poll_voters, through: :poll_banks

end