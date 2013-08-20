class Horaire < ActiveRecord::Base
	attr_accessible  :Zom
	validates_presence_of  :Zom, :presence => true 
end