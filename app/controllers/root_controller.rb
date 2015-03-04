class RootController < ApplicationController
  get '/' do
    erb :'application/root'
  end
end