# file: app.rb
require 'sinatra/base'


class Application < Sinatra::Base

post '/sort-names' do
  names = params[:names]
  name = names.split(' ')
  n = name.sort
  return n
end


# GET /
  # Root path (homepage, index page)
  # get '/hello' do
  #   name = params[:name]
  #   return "Hello #{name}!"
  # end
  
end