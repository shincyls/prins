class CreatePollCandidates < ActiveRecord::Migration[5.2]
    def change
      create_table :poll_candidates do |t|
        t.references :poll
        t.string :subject
        t.string :description
        t.string :picture
        t.timestamps
      end
    end
end
  