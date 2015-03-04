class Student < ActiveRecord::Base
  belongs_to :cohort
  has_many :resources

  def cohort_name=(name)
    self.cohort = Cohort.find_or_create_by(:name => name.downcase.gsub("-", "").gsub(" ", ""))
  end
end