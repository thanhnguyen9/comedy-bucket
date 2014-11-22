class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :time
      t.string :place_name
      t.string :location
      t.references :artist, index: true

      t.timestamps
    end
  end
end
