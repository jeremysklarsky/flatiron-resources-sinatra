class CohortsController < ApplicationController

  get '/cohorts' do
    @cohorts = Cohort.all
    erb :'cohorts/index' 
  end

  get '/cohorts/new' do
    erb :'cohorts/new'
  end

  post '/cohorts' do
    Cohort.create(:name => params[:cohort][:name])
    StudentNameScraper.new(params[:cohort][:name]).call
    redirect '/cohorts'
  end

end