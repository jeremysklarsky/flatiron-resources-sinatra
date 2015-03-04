class StudentNameScraper

  attr_accessor :cohort, :doc

  def initialize(year)
    @cohort = year
  end

  def slug
    cohort.downcase.gsub("-", "").gsub(" ", "")
  end

  def get_info
    html = open("http://#{self.slug}.students.flatironschool.com/")    
    @doc = Nokogiri::HTML(html)
    doc.search("li.home-blog-post").collect do |student|
      [student.search("div.blog-title a").text, student.search("img").attr("src").value, slug]
    end
  end

  def call
    get_info.each do |name|
      build_students(*name)
    end
  end

  def build_students(name, pic_link, cohort)
    student = Student.create(name: name, pic_link: pic_link, cohort_name: cohort)
    student.save
  end  

end