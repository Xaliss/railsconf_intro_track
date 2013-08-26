class Trip < ActiveRecord::Base
  attr_accessible :direction_id, :route_id, :service_id, :shape_id, :trip_headsign, :trip_id

#-------------------------------------------------------
# Va lire une flatFile en csv contenant la liste des 
# parcours actives du reseau

def self.parcoursCsv(fichier)

	puts "oooooooooooooooooooooooooooooooooooooooo"
		
		if success = Trip.delete_all then puts "Table videe ! Chargement commence" end

	puts "----------------------------------------"

  asset_f1 = "app/assets/alim/#{fichier}"
  puts asset_f1
      ll = ["De Trip"]
      
      compte = 0
      @retourCsv=CSV.parse(File.read(asset_f1),:headers => true)
      @retourCsv.each  do |rangee|
      	parcours = find_by_id(rangee["id"]) || new
      	parcours.attributes = rangee.to_hash.slice(*accessible_attributes)
      	ll << parcours.attributes
      	puts parcours
        parcours.save!  
 		    compte +=1
		    @chargement=compte
		    @compte = compte
		    puts   compte
	 
	 end
      
     @li = ll

     
 	puts  "Base de donnees chargee avec succes. #{@compte} enregistrements"
end

#-------------------------------------------------------

end
