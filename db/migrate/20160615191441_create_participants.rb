class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :trip_id
      t.integer :hobbies_list_id


      t.timestamps null: false
    end
  end
end
