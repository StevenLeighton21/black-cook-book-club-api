require 'sinatra/base'

class UsersController < Sinatra::Base

  get "/" do
    "Hello World!"
  end

end

run UsersController.run!
