class CreatePollVoters < ActiveRecord::Migration[5.2]
    def change
      create_table :poll_voters do |t|
        t.references :event
        t.references :register
        t.string :evote_code, limit: 8
        t.timestamps
      end
    end
  end
  