class AddLatLngToScheduleTable < ActiveRecord::Migration
  def change
    add_column :schedules, :lat, :float
    add_column :schedules, :lng, :float
  end
end
