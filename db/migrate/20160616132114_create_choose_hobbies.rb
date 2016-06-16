class CreateChooseHobbies < ActiveRecord::Migration
  def change
    create_table :choose_hobbies do |t|
      t.references :hobby, index: true
      t.references :participate, index: true
      t.timestamps null: false
    end
  end
end
