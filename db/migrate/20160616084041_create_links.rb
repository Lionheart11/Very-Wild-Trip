class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :trip_id
      t.integer :participant_id
      t.integer :hobby_id

      t.timestamps null: false
    end
  end
end
