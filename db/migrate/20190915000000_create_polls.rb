class CreatePolls < ActiveRecord::Migration[5.2]
    def change
      create_table :polls do |t|
        t.references :event
        t.string :name
        t.string :description
        t.integer :max_votes, default: 1
        t.datetime :start_session
        t.datetime :end_session
        t.integer :minutes_session
        t.timestamps
      end
    end
end