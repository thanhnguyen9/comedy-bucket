class CreateCommentartists < ActiveRecord::Migration
  def change
    create_table :commentartists do |t|
      t.text :post
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
