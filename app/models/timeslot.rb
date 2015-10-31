class Timeslot < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :schoolclass
end
