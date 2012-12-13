require "mongoid"

class PersonUser
	include Mongoid::Document
	store_in collection: "PersonUser"
	field :provider, type: Array
	field :additionalType, type: Array
	field :itemId, type: Array
	field :name, type: Array
	field :userDateRegistered, type: Array
	field :description, type: Array
	field :url, type: Array
	field :accessToken, type: String
	field :accessSecret, type: String
	belongs_to :User
	has_many :Filter
	has_many :Source

	validates :accessToken, allow_nil: false, presence: true 
end