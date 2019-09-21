class PollCandidate < ApplicationRecord

    belongs_to :poll
    has_many :poll_banks

end