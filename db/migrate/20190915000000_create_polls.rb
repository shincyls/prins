class CreatePolls < ActiveRecord::Migration[5.2]
    def change
      create_table :polls do |t|
        t.references :event, default: 1
        t.string :name
        t.string :description
        t.string :max_votes
        t.datetime :start_session
        t.datetime :end_session
        t.integer :minutes_session
        t.timestamps
      end
    end
end