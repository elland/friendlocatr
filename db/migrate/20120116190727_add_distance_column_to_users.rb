class AddDistanceColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :distance, :integer
  end
end
