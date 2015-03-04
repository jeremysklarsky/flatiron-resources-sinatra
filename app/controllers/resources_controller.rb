class ResourcesController < ApplicationController

  get '/cohorts/:id/resources' do
    @cohort = Cohort.find(params[:id])
    @resources = Resource.all
    erb :'resources/index' 
  end

  get '/cohorts/:id/resources/new' do  
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students
    @tools = Tool.all
    @subjects = Subject.all
    erb :'resources/new'
  end

  post '/cohorts/:id/resources' do

    @resource = Resource.create(params[:resource])
    @resource.save
    redirect "/cohorts/#{params[:id]}/resources"
  end

  post '/cohorts/:cohort_id/resources/:resource_id/karma' do
    @resource = Resource.find(params[:resource_id])
    @resource.add_karma
    redirect "/cohorts/#{params[:cohort_id]}/resources"
  end

  

end