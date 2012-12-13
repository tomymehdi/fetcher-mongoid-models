require 'mongoid'

class User
  include Mongoid::Document
  store_in collection: "User"
  field :email
  field :login
  field :password
  has_many :Column
  has_many :Source
  has_many :PersonUser
end
