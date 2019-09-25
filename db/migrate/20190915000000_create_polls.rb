class CreatePolls < ActiveRecord::Migration[5.2]
    def change
      create_table :polls do |t|
        t.references :event
        t.string :name
        t.string :description
        t.integer :max_votes, default: 1
        t.boolean :allow_votes, default: false
        t.boolean :poll_results, default: false
        t.datetime :start_session
        t.datetime :end_session
        t.integer :minutes_session
        t.timestamps
      end
    end
end