class CreateEvents < ActiveRecord::Migration[5.2]
    def change
      create_table :events do |t|
        t.string :name
        t.string :location
        t.string :host_company
        t.string :organizer_company
        t.datetime :start_date
        t.datetime :end_date
        t.integer :minutes_session
        t.boolean :evoting, default: false
        t.timestamps
      end
    end
end