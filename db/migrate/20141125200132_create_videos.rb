class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.text :info
      t.integer :artist_id

      t.timestamps
    end
  end
end
