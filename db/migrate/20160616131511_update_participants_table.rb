class UpdateParticipantsTable < ActiveRecord::Migration
  def change
    remove_column :participants, :trip_id, :integer
    remove_column :participants, :hobbies_id, :integer
  end
end
