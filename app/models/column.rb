require "mongoid"

class Column
	include Mongoid::Document
	store_in collection: "Column"
	belongs_to :User
	has_many :Filter, inverse_of: :Column
	has_many :Source, inverse_of: :Column

end