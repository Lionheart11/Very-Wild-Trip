class ChangeTypeInParticipate < ActiveRecord::Migration
  def change
    remove_column :participates, :trip_id
    remove_column :participates, :participant_id
    add_reference :participates, :trip, index: true 
    add_reference :participates, :participant, index: true 
  end
end
