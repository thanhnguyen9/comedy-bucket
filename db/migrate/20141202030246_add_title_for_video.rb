class AddTitleForVideo < ActiveRecord::Migration
  def change
    add_column :products, :title, :string
  end
end
