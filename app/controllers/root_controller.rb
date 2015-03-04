class RootController < ApplicationController
  get '/' do
    redirect '/cohorts'
  end
end