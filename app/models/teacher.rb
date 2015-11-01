class Teacher < ActiveRecord::Base
  has_many :timeslots
  has_many :schoolclasses, through: :timeslots
  has_many :students, through: :schoolclasses
end
