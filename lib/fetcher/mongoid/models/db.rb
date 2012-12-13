require 'sinatra/base'
require 'mongoid'
require 'pry'
require 'models'

class DB
  def initialize path_to_mongoid_yml
    Mongoid.load!('path_to_mongoid_yml', :development)
  end
end


