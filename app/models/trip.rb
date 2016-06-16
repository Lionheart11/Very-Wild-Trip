class Trip < ActiveRecord::Base
  has_many :participates
end
