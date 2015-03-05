class SubjectsController < ApplicationController

  get '/cohorts/:cohort_id/subjects' do
    @cohort = Cohort.find(params[:cohort_id])
    @subjects = Subject.all
    erb :'/subjects/index'
  end

  get '/cohorts/:cohort_id/subjects/:subject_id' do
    @cohort = Cohort.find(params[:cohort_id])
    @subject = Subject.find(params[:subject_id])
    erb :'/subjects/show'
  end

end