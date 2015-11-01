class Student < ActiveRecord::Base
  has_many :class_memberships
  has_many :schoolclasses, through: :class_memberships
  has_many :teachers, through: :schoolclasses
end
