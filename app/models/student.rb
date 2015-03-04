class Student < ActiveRecord::Base
  belongs_to :cohort
  has_many :resources
end