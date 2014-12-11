class CreateVoteartists < ActiveRecord::Migration
  def change
    create_table :voteartists do |t|
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
