require "mongoid"

class Source
	include Mongoid::Document
	store_in collection: "Source"
	field :streamArgument, type: Array
	field :provider
	field :endpoint
	field :viewer, type: Integer
	belongs_to :Column

  validates :Column_id, :presence => { :message => :required }
  validates :Column, :presence =>  { :message => :required, :if => :Column_id } 
end