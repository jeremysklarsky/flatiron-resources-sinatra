class Resource < ActiveRecord::Base
  belongs_to :student
  has_many :resource_subjects
  has_many :resource_types
  has_many :subjects, through: :resource_subjects
  has_many :type, through: :resource_types
end