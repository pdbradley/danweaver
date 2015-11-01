class Schoolclass < ActiveRecord::Base
  has_many :students, through: :class_memberships
  has_many :teachers, through: :timeslots
  has_many :class_memberships
  has_many :timeslots
end
