class AddImagesToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :images, :string
  end
end
