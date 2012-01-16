class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :lat
      t.integer :lon

      t.timestamps
    end
  end
end
