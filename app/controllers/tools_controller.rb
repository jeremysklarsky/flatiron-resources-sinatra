class ToolsController < ApplicationController

  get '/cohorts/:cohort_id/tools' do
    @cohort = Cohort.find(params[:cohort_id])
    erb :'/tools/index'
  end

  get '/cohorts/:cohort_id/tools/:tool_id' do
    @cohort = Cohort.find(params[:cohort_id])
    @tool = Tool.find(params[:tool_id])
    erb :'/tools/show'
  end



end