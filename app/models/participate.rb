class Participate < ActiveRecord::Base
  has_many :choose_hobbies
  belongs_to :participant
  belongs_to :trip

  validates_presence_of :trip_id, :participant_id
end
