class CreatePollBanks < ActiveRecord::Migration[5.2]
    def change
      create_table :poll_banks do |t|
        t.references :poll
        t.references :poll_voter
        t.references :poll_candidate
        t.boolean :active, default: false
      end
    end
end