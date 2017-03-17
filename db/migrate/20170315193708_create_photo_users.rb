class CreatePhotoUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_users do |t|
      t.references :photo, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
