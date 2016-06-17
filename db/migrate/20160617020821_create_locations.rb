class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.float :longitude
      t.float :latitude 

      t.timestamps null: false
    end
  end
end
