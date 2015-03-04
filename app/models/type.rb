class Type < ActiveRecord::Base
  has_many :resource_types
  has_many :resources, through: :resource_types
end