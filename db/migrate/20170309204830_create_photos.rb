class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :title
      t.string :content_type
      t.text :body
      t.integer :likes

      t.timestamps
    end
  end
end
