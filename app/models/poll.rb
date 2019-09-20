class Poll < ApplicationRecord

    belongs_to :event
    belongs_to :poll_
    has_many :poll_voters
    has_many :poll_candidates

end