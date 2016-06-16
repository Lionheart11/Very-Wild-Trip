class ChooseHobby < ActiveRecord::Base
  belongs_to :hobby
  belongs_to :participate
end
