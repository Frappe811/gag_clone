class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :img
      t.integer :point
      t.string :comment
      t.date :created_at

      t.timestamps
    end
  end
end
