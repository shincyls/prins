class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.string :password_digest
      t.string :remember_digest
      t.integer :role, default: 1
      t.timestamps
    end
  end
end
