class ResourceTool < ActiveRecord::Base
  belongs_to :resource
  belongs_to :tool
end