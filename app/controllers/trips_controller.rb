class TripsController < ApplicationController
  require 'xmlsimple'	
  require 'net/http'
  require 'uri'
  require 'open-uri'
  require 'csv'


 
def index

@alimx = Dir.glob("app/assets/alim/*.txt")
 
 	  
 end
 

def charge

@chargement = "Commence"
puts "************************************************"
Trip.parcoursCsv

end
end