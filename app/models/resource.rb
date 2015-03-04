class Resource < ActiveRecord::Base
  belongs_to :student
  has_many :resource_subjects
  has_many :subjects, through: :resource_subjects
  has_many :resource_tools
  has_many :tools, through: :resource_tools


  def student_name=(name)
    if name != ""
      self.student = Student.find_or_create_by(:name => name)
    end
  end

  def tool_name=(name)
    if name != ""
      self.tools << Tool.find_or_create_by(:name => name)
    end
  end

  def subject_name=(name)
    if name != ""
      self.subjects << Subject.find_or_create_by(:name => name)
    end
  end

  def add_karma
    if self.karma == nil
      self.karma = 1
    else
      self.karma += 1
    end
    self.save
  end

end

 