class CreatePageContents < ActiveRecord::Migration[5.2]
  def change
    create_table :page_contents do |t|
      t.integer :name
      t.integer :value
      t.timestamps
    end
  end
end
