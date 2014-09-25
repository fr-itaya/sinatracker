require 'sinatra'
require 'sinatra/reloader'
require 'mysql2'
require 'active_record'
require 'slim'

ActiveRecord::Base.configrations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection('development')

class Task < ActiveRecord::Base
end

get '/' do
  @tasks = Task.order("id desc").all
  slim :index
end
