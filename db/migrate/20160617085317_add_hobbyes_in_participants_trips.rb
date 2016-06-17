class AddHobbyesInParticipantsTrips < ActiveRecord::Migration
  def change
    add_column :participants_trips, :hobbies, :string
  end
end
