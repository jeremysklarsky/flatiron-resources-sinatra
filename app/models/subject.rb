class Subject < ActiveRecord::Base
  has_many :resource_tools
  has_many :tools, through: :resource_tools
end