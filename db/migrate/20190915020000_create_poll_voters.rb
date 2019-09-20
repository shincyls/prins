class CreatePollVoters < ActiveRecord::Migration[5.2]
    def change
      create_table :poll_voters do |t|
        t.references :register
        t.string :voucher_code
        t.timestamps
      end
    end
  end
  