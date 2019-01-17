class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :phone_number_2
      t.string :identity_number
      t.float :purchase, default: 0
      t.integer :drawing_chance, default: 0
      t.string :ticket_number, limit: 3
      t.integer :status, default: 0
      t.integer :category, default: 0
      t.boolean :attendance, default: false
      t.string :holder
      t.string :info_1
      t.string :info_2
      t.string :info_3
      t.string :info_4
      t.string :info_5
      t.timestamps
    end
  end
end
