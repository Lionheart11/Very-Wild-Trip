class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :creator
      t.string :destination
      t.integer :budget

      t.timestamps null: false
    end
  end
end
