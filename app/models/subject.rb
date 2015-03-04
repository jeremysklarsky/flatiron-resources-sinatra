class Subject < ActiveRecord::Base
  has_many :resource_types
  has_many :types, through: :resource_types
end