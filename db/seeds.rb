ruby007 = Cohort.create(:name => "ruby007")
alex_test = Student.create(:name => "Alex Lee Fake", :cohort_name => "Ruby-007")
erb_sublime = Resource.create(:name => "ERB Sublime plugin", :link => "https://github.com/eddorre/SublimeERB", :student_name => "Alex Lee Fake", :description => "ERB Sublime thingy lets you make a shortcut to getting your ERB tags easily (i.e. <% %>)")
alex_test.save

erb_subj = Subject.create(:name => "ERB")
sinatra_subj = Subject.create(:name => "Sinatra")

env_setup_tool = Tool.create(:name => "Environment Setup")
sublime_tool = Tool.create(:name => "Sublime")

erb_sublime.tool_name = "Environment Setup"
erb_sublime.tool_name = "Sublime"

erb_sublime.subject_name = "ERB"
erb_sublime.subject_name = "Sinatra"

alex_test.save
erb_sublime.save

StudentNameScraper.new("Ruby-007").call