class PollVoter < ApplicationRecord

    has_many :poll_banks
    belongs_to :event
    belongs_to :register, optional: true
    validates :evote_code, uniqueness: {message: " must be unique."}

    def generate_code(length)
        charset = Array('a'..'z') + Array('0'..'9')
        begin
            # self.voucher_code = SecureRandom.urlsafe_base64(length-2).gsub('-',"#").gsub('_',"*").downcase!
            self.evote_code = Array.new(length) {charset.sample}.join
        end while PollVoter.exists?(evote_code: self.evote_code)
    end

    def voted_candidate
    end

end