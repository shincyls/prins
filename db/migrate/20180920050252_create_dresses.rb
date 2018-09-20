class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
    create_table :dresses do |t|
      t.string :name
      t.string :code
      t.references :category, index: true
      t.string :remark
      t.string :color
      t.float :price
      t.integer :stock
      t.float :cm_length
      t.float :cm_bust
      t.float :cm_waist
      t.float :cm_hip
      t.timestamps
    end
  end
end
