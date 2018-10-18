class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.integer :drawing_chance
      t.string :ticket_number, limit: 5
      t.integer :category, default: 0
      t.string :field_1
      t.string :field_2
      t.string :field_3

      t.timestamps
    end
  end
end
