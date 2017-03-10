class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.integer :user_id
      t.string :content_type
      t.string :title
      t.string :content
      t.integer :likes

      t.timestamps
    end
  end
end
