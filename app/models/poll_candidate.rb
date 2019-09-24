class PollCandidate < ApplicationRecord

    belongs_to :poll
    has_many :poll_banks
    has_many :poll_voters, through: :poll_banks

    def full_desc
        self.subject + ' - ' + self.description
    end

    def voted_by(voter_id)
        if PollBank.exists?(poll_id: self.poll_id, poll_candidate_id: self.id, poll_voter_id: voter_id, active: true)
            return "active"
        end
    end

    def voted_count
        self.poll_banks.where(active: true).count 
    end

end