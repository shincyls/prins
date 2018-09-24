class CreateUserDressLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_dress_likes do |t|
      t.references :user, index: true
      t.references :dress, index: true
      t.boolean :like, default: false
      t.timestamps
    end
  end
end
