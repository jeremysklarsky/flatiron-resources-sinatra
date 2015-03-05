class Subject < ActiveRecord::Base
  has_many :resource_subjects
  has_many :resources, through: :resource_subjects

end