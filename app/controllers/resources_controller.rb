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

  get '/cohorts/:id/resources/:resource_id' do
    @cohort = Cohort.find(params[:id])
    @resource = Resource.find(params[:resource_id])
    erb :'resources/show'
  end

  post '/cohorts/:id/resources' do
    @resource = Resource.create(params[:resource])
    @resource.save
    redirect "/cohorts/#{params[:id]}/resources"
  end

  patch '/cohorts/:id/resources/:resource_id' do
    @resource = Resource.find(params[:resource_id])
    @resource.update(params[:resource])
    @resource.save
    redirect "/cohorts/#{params[:id]}/resources"
  end


  get '/cohorts/:id/resources/:resource_id/edit' do
    @cohort = Cohort.find(params[:id])
    @students = @cohort.students
    @resource = Resource.find(params[:resource_id])
    erb :'resources/edit'
  end


  post '/cohorts/:cohort_id/resources/:resource_id/karma' do
    @resource = Resource.find(params[:resource_id])
    @resource.add_karma
    redirect back
  end

  delete '/cohorts/:id/resources/:resource_id' do
    @resource = Resource.find(params[:resource_id])
    @resource.destroy
    redirect "/cohorts/#{params[:id]}/resources"
  end

end