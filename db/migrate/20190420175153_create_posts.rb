class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :conntent
      t.integer :user_id

      t.timestamps
    end
  end
end
