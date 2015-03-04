class Student < ActiveRecord::Base
  belongs_to :cohort
  has_many :resources

  def cohort_name=(name)
    self.cohort = Cohort.find_or_create_by(:name => name.downcase.gsub("-", "").gsub(" ", ""))
  end

  def total_karma
    student_karma = self.resources.collect {|resource| resource.karma}
    student_karma.inject(:+)
  end

end