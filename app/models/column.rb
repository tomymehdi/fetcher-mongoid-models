require "mongoid"

class Column
	include Mongoid::Document
	store_in collection: "Column"
	belongs_to :User
	has_many :Filter
	has_many :Source
end