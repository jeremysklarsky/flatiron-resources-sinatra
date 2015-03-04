class Cohort < ActiveRecord::Base
  has_many :students
  has_many :resources, through: :students
end