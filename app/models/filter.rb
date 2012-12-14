require "mongoid"

class Filter
	include Mongoid::Document
	store_in collection: "Filter"
	field :type
	field :property
	field :operator
	field :value, type: Array
	belongs_to :Column

  validates :Column_id, :presence => { :message => :required }
  validates :Column, :presence =>  { :message => :required, :if => :Column_id } 
end