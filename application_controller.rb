require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
 
  post '/cost' do 
    #get important information out of params 
    user_size=params[:size]
    user_cost=params[:cost]
    @result=castle(user_size, user_cost)
    @cost=@result[0]
    @image=@result[1]
    @imageb=@result[2]
    @imagec=@result[3]
    erb :results
  end
  



  
end