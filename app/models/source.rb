require "mongoid"

class Source
	include Mongoid::Document
	store_in collection: "Source"
	field :streamArgument, type: Array
	field :provider
	field :endpoint
	field :viewer, type: Integer
	belongs_to :Column

  validates :Column, allow_nil: false, presence: true 
end