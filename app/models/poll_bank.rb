class PollBank < ApplicationRecord

    belongs_to :poll
    belongs_to :poll_voter
    belongs_to :poll_candidate

end