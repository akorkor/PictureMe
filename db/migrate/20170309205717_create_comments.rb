class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.integer :user_id
      t.references :photo, foreign_key: true
      t.integer :photo_id
      t.text :body

      t.timestamps
    end
  end
end
