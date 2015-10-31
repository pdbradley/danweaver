class ClassMembership < ActiveRecord::Base
  belongs_to :student
  belongs_to :schoolclass
end
