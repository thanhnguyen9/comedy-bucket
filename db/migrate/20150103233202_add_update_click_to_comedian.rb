class AddUpdateClickToComedian < ActiveRecord::Migration
  def change
    add_column :comedians, :update_comedian, :boolean, default: false
  end
end
