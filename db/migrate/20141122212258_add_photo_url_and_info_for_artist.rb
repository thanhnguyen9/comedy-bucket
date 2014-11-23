class AddPhotoUrlAndInfoForArtist < ActiveRecord::Migration
  def change
    add_column :artists, :photo, :string
    add_column :artists, :info, :text 
  end
end
