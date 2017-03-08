class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.integer :user_id
      t.references :post, foreign_key: true
      t.integer :post_id
      t.string :body
      t.datetime :datetime

      t.timestamps
    end
  end
end
