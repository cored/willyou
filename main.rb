require 'rubygems'
require 'sinatra'

get '/' do 
  @title = "___Will__You"
  messages = ["Here i will come", "There you go", "Of course not"]
  @message = messages[rand(messages.size)]
  erb :message
end

post '/add' do 
  @message = params[:will]+" will "+params[:you]+" you"
  erb :message
end

