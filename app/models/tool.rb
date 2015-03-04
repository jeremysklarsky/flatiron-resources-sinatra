class Tool < ActiveRecord::Base
  has_many :resource_tools
  has_many :resources, through: :resource_tools
end