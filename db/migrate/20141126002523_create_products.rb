class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url
      t.text :info
      t.string :user_id

      t.timestamps
    end
  end
end
