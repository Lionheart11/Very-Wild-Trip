class CreateChooseHobbies < ActiveRecord::Migration
  def change
    create_table :participants_trips, id: false do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :participant, index: true
    end
  end
end
