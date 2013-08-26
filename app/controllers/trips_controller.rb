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
fichier = params['fichier']
fichierx = fichier.split('.')
le_model= fichierx[0].capitalize[0..-2]
puts "Table #{fichier} reconstruite et vide et le_model= #{le_model}"
klass = Object.const_get le_model
klass.parcoursCsv(fichier)
puts klass
redirect_to trips_index_path , notice:  " Import CSV reussie,  #{@compte} enregistrements"
 
end
end

