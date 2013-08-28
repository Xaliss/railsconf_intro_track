class TripsController < ApplicationController
  require 'xmlsimple'	
  require 'net/http'
  require 'uri'
  require 'open-uri'
  require 'csv'
	


def index

@alimx = Dir.glob("app/assets/alim/*.csv")
 
 	  
 end
 

def charge
 
@chargement = "Commence"
 puts "************************************************"
 fichier = params['fichier']

 le_model = morcelle(fichier)
 
 puts "Table #{fichier} reconstruite et vide et le_model= #{le_model}"
 klass = Object.const_get le_model
 parcoursCsv(fichier,le_model)
 puts klass 

 redirect_to trips_index_path , notice:  " Import CSV reussie,  #{@compte} enregistrements"
 
end
#-------------------------------------------
# morcelle prend un nom de variable de type
# un_deux_trois.txt et le "Camelcasise", enleve
# le suffixe "txt" ou 'cvs' ..ect et enleve le "s" final
# pour rendre "UnDeuxTroi" Utile pour modifier les noms de 
# modele entre la table(plurielle) et son modele (sing)
#
#-------------------------------------------
def morcelle(chameau)
	cham = chameau.split('.')
	chamx = cham[0].split('_')
		if chamx.length > 1 
			mots = chamx.collect{ |mot| mot.capitalize}.join('')
			mots = mots[0..-2]
		else
			mots = cham[0].capitalize[0..-2]	
		end
end
#-------------------------------------------



end

