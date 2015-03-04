class StudentsController < ApplicationController

  get '/cohorts/:cohort_id/students' do
    @cohort = Cohort.find(params[:cohort_id])
    @students = @cohort.students
    erb :'students/index'
  end

  get '/cohorts/:cohort_id/students/:student_id' do
    @cohort = Cohort.find(params[:cohort_id])
    @student = Student.find(params[:student_id])
    erb :'students/show'
  end

end