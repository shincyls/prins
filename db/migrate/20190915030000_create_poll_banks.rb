class CreatePollBanks < ActiveRecord::Migration[5.2]
    def change
      create_table :poll_banks do |t|
        t.references :poll
        t.references :poll_voter
        t.references :poll_candidate
      end
    end
end