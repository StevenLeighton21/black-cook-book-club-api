require 'sinatra/base'
require 'sinatra/json'

class BooksController < Sinatra::Base

  get "/books" do
    json :books =>
     [
        {
          :title => 'Yvonne\'s Great Cookbook',
          :date => Date.new(2019, 01, 01),
          :isbn => '12345ABC',
          :publisher => 'Penguin'
        },
        {
          :title => 'Yvonne\'s Greater Cookbook',
          :date => Date.new(2019, 01, 05),
          :isbn => '45678ABC',
          :publisher => 'Penguin'
        }
      ]
  end

end

run BooksController.run!
