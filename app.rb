require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'slim'

ActiveRecord::Base.establish_connection(
  "adapter" => "mysql",
  "database" => "./sinatracker.db"
  )

class Task < ActiveRecord::Base
end

get '/' do
  @tasks = Task.order("id desc").all
  slim :index
end