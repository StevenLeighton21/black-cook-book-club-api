require 'sinatra'
require 'sinatra/json'
require 'mysql2'

def db
  @db ||= Mysql2::Client.new(:host => 'db', :database => 'dbmain', :username => 'root', :password => 'password')
end

get "/books" do
  books = []
  db.query('SELECT * FROM books', :as => hash).each do |row|
    books << { title: row['title'], isbn: row['isbn'], publisher: row['publisher'], year: row['year']}
  end
  json :books => books
end
