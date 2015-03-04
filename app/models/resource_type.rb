class ResoureType < ActiveRecord::Base
  belongs_to :resource
  belongs_to :type
end